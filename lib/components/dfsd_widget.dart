import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dfsd_model.dart';
export 'dfsd_model.dart';

class DfsdWidget extends StatefulWidget {
  const DfsdWidget({
    super.key,
    this.video,
  });

  final String? video;

  @override
  State<DfsdWidget> createState() => _DfsdWidgetState();
}

class _DfsdWidgetState extends State<DfsdWidget> {
  late DfsdModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DfsdModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: PageView(
            controller: _model.pageViewController ??=
                PageController(initialPage: 0),
            onPageChanged: (_) => safeSetState(() {}),
            scrollDirection: Axis.vertical,
            children: [
              FlutterFlowVideoPlayer(
                path: widget.video!,
                videoType: VideoType.network,
                width: double.infinity,
                height: double.infinity,
                autoPlay: true,
                looping: false,
                showControls: false,
                allowFullScreen: false,
                allowPlaybackSpeedMenu: false,
                pauseOnNavigate: false,
              ),
            ],
          ),
        ),
        Stack(
          children: [
            const Stack(
              children: [],
            ),
            const Align(
              alignment: AlignmentDirectional(0.96, 0.5),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: Icon(
                  Icons.add_comment_sharp,
                  color: Color(0xFFF4F2EF),
                  size: 37.0,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.93, -0.95),
              child: Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.asset(
                    'assets/images/photo_2024-07-20_13-21-31.jpg',
                    width: 300.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.67, -0.94),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 7.0),
                child: Text(
                  '4A Play',
                  style: FlutterFlowTheme.of(context).titleMedium.override(
                        fontFamily: 'elyas',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: const AlignmentDirectional(-0.98, -0.98),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.safePop();
            },
            child: const Icon(
              Icons.chevron_left,
              color: Color(0xFFFF7B00),
              size: 59.0,
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.95, 0.31),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
            child: ToggleIcon(
              onPressed: () async {
                safeSetState(
                  () => FFAppState().fgdf.contains(currentUserReference)
                      ? FFAppState().removeFromFgdf(currentUserReference!)
                      : FFAppState().addToFgdf(currentUserReference!),
                );
              },
              value: FFAppState().fgdf.contains(currentUserReference),
              onIcon: const Icon(
                Icons.favorite_outlined,
                color: Color(0xFFFB8E06),
                size: 45.0,
              ),
              offIcon: const Icon(
                Icons.favorite_border,
                color: Color(0xFFF4F3F2),
                size: 45.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
