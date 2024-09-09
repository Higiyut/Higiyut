// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:video_player/video_player.dart';
import 'package:flutter/services.dart';
import 'dart:async';

class CustomYouTubePlayer extends StatefulWidget {
  const CustomYouTubePlayer({
    Key? key,
    this.width,
    this.height,
    required this.videoPath,
    required this.autoPlay,
    required this.looping,
    required this.showControls,
    required this.allowFullScreen,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String videoPath;
  final bool autoPlay;
  final bool looping;
  final bool showControls;
  final bool allowFullScreen;

  @override
  _CustomYouTubePlayerState createState() => _CustomYouTubePlayerState();
}

class _CustomYouTubePlayerState extends State<CustomYouTubePlayer>
    with SingleTickerProviderStateMixin {
  late VideoPlayerController _videoPlayerController;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  bool isSourceError = false;
  bool isFullScreen = false;
  bool showControls = true;
  bool isSliding = false;
  bool isLongPressing = false;
  Timer? speedTimer;
  double playbackSpeed = 1.0;

  List<String> qualities = ['240p', '360p', '480p', '720p', '1080p'];
  String selectedQuality = '720p';

  @override
  void initState() {
    super.initState();
    initializePlayer();

    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0.1, 0.0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _animationController.dispose();
    speedTimer?.cancel();
    exitFullScreenMode();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    setState(() {
      isSourceError = false;
    });

    try {
      _videoPlayerController = VideoPlayerController.network(widget.videoPath)
        ..setLooping(widget.looping)
        ..initialize().then((_) {
          if (widget.autoPlay) {
            _videoPlayerController.play();
          }
          setState(() {});
        });

      _videoPlayerController.addListener(() {
        if (_videoPlayerController.value.position ==
            _videoPlayerController.value.duration) {
          onVideoComplete();
        }
      });
    } catch (exception) {
      setState(() {
        isSourceError = true;
      });
      print("Exception: $exception");
    }
  }

  void onVideoComplete() {
    print("Video playback finished, but no action is triggered.");
  }

  void toggleFullScreen() {
    setState(() {
      isFullScreen = !isFullScreen;
    });

    if (isFullScreen) {
      enterFullScreenMode();
    } else {
      exitFullScreenMode();
    }
  }

  void enterFullScreenMode() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  void exitFullScreenMode() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  void seekBy(Duration duration) async {
    if (!isSliding) {
      setState(() {
        isSliding = true;
        _slideAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: duration.isNegative ? Offset(-0.1, 0.0) : Offset(0.1, 0.0),
        ).animate(CurvedAnimation(
          parent: _animationController,
          curve: Curves.easeInOut,
        ));
      });

      await _animationController.forward();
      final currentPosition = _videoPlayerController.value.position;
      final newPosition = currentPosition + duration;

      final maxPosition = _videoPlayerController.value.duration;
      if (newPosition < Duration.zero) {
        _videoPlayerController.seekTo(Duration.zero);
      } else if (newPosition > maxPosition) {
        _videoPlayerController.seekTo(maxPosition);
      } else {
        _videoPlayerController.seekTo(newPosition);
      }

      await _animationController.reverse();
      setState(() {
        isSliding = false;
      });
    }
  }

  void handleLongPressStart(Duration duration) {
    isLongPressing = true;
    speedTimer = Timer(Duration(seconds: 2), () {
      if (isLongPressing) {
        seekBy(duration * 2);
        speedTimer?.cancel();
      }
    });
  }

  void handleLongPressEnd() {
    isLongPressing = false;
    speedTimer?.cancel();
  }

  void toggleControlsVisibility() {
    setState(() {
      showControls = !showControls;
    });
  }

  void togglePlaybackSpeed() {
    setState(() {
      playbackSpeed = playbackSpeed == 1.0 ? 2.0 : 1.0;
      _videoPlayerController.setPlaybackSpeed(playbackSpeed);
    });
  }

  void showQualitySelector(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Quality'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: qualities.map((quality) {
              return RadioListTile<String>(
                title: Text(quality),
                value: quality,
                groupValue: selectedQuality,
                onChanged: (String? value) {
                  setState(() {
                    selectedQuality = value!;
                    // Update the video source here based on selectedQuality
                  });
                  Navigator.of(context).pop();
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final aspectRatio = _videoPlayerController.value.aspectRatio;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: toggleControlsVisibility,
              child: Container(
                width: isFullScreen
                    ? mediaQuery.size.width
                    : widget.width ?? mediaQuery.size.width,
                height: isFullScreen
                    ? mediaQuery.size.height
                    : widget.height ?? 250.0,
                color: Colors.black,
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Stack(
                    children: [
                      if (!isSourceError)
                        SlideTransition(
                          position: _slideAnimation,
                          child: VideoPlayer(_videoPlayerController),
                        ),
                      if (isSourceError)
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error_outline,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'This video is unavailable',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              InkWell(
                                onTap: initializePlayer,
                                child: Container(
                                  height: 30,
                                  width: 100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Reload again",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 13),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (widget.showControls && showControls)
                        Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onLongPressStart: (_) => handleLongPressStart(
                                    Duration(seconds: -10)),
                                onLongPressEnd: (_) => handleLongPressEnd(),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.replay_10,
                                    color: Colors.white,
                                    size: 36,
                                  ),
                                  onPressed: () =>
                                      seekBy(Duration(seconds: -10)),
                                ),
                              ),
                              SizedBox(width: 20),
                              IconButton(
                                icon: Icon(
                                  _videoPlayerController.value.isPlaying
                                      ? Icons.pause
                                      : Icons.play_arrow,
                                  color: Colors.white,
                                  size: 36,
                                ),
                                onPressed: () {
                                  setState(() {
                                    if (_videoPlayerController
                                        .value.isPlaying) {
                                      _videoPlayerController.pause();
                                    } else {
                                      _videoPlayerController.play();
                                    }
                                  });
                                },
                              ),
                              SizedBox(width: 20),
                              GestureDetector(
                                onLongPressStart: (_) =>
                                    handleLongPressStart(Duration(seconds: 10)),
                                onLongPressEnd: (_) => handleLongPressEnd(),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.forward_10,
                                    color: Colors.white,
                                    size: 36,
                                  ),
                                  onPressed: () =>
                                      seekBy(Duration(seconds: 10)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (widget.showControls && showControls)
                        Positioned(
                          bottom: 100, // Adjusted to bring it up
                          left: 0,
                          right: 0,
                          child: Center(
                            child: GestureDetector(
                              onTap: togglePlaybackSpeed,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.fast_forward,
                                        color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      'Speed: ${playbackSpeed}x',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      if (widget.showControls && showControls)
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: ControlsOverlay(
                            videoPlayerController: _videoPlayerController,
                            onFullScreenToggle: toggleFullScreen,
                            isFullScreen: isFullScreen,
                            allowFullScreen: widget.allowFullScreen,
                          ),
                        ),
                      if (isFullScreen)
                        Positioned(
                          top: 30,
                          left: 10,
                          child: IconButton(
                            icon: Icon(Icons.fullscreen_exit,
                                color: Colors.white, size: 36),
                            onPressed: toggleFullScreen,
                          ),
                        ),
                      if (widget.showControls && showControls)
                        Positioned(
                          top: 10,
                          right: 10,
                          child: IconButton(
                            icon: Icon(Icons.settings, color: Colors.white),
                            onPressed: () => showQualitySelector(context),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ControlsOverlay extends StatelessWidget {
  const ControlsOverlay({
    Key? key,
    required this.videoPlayerController,
    required this.onFullScreenToggle,
    required this.isFullScreen,
    required this.allowFullScreen,
  }) : super(key: key);

  final VideoPlayerController videoPlayerController;
  final VoidCallback onFullScreenToggle;
  final bool isFullScreen;
  final bool allowFullScreen;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: 1.0,
      duration: Duration(milliseconds: 300),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black54, Colors.transparent],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            VideoProgressIndicator(
              videoPlayerController,
              allowScrubbing: true,
              colors: VideoProgressColors(
                playedColor: Colors.red,
                backgroundColor: Colors.grey.withOpacity(0.5),
                bufferedColor: Colors.grey,
              ),
            ),
            ValueListenableBuilder<VideoPlayerValue>(
              valueListenable: videoPlayerController,
              builder: (context, value, child) {
                final position = value.position;
                final duration = value.duration;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _formatDuration(position),
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        _formatDuration(duration),
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (allowFullScreen)
                  IconButton(
                    icon: Icon(
                      isFullScreen ? Icons.fullscreen_exit : Icons.fullscreen,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: onFullScreenToggle,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}
