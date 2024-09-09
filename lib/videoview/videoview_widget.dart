import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'videoview_model.dart';
export 'videoview_model.dart';

class VideoviewWidget extends StatefulWidget {
  const VideoviewWidget({super.key});

  @override
  State<VideoviewWidget> createState() => _VideoviewWidgetState();
}

class _VideoviewWidgetState extends State<VideoviewWidget> {
  late VideoviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoviewModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  height: 400.0,
                  child: custom_widgets.CustomYouTubePlayer(
                    width: double.infinity,
                    height: 400.0,
                    videoPath:
                        'https://4anime.link/Series/Vinland%20Saga/Vinland%20Saga_S2_%20EP%2004.mp4',
                    autoPlay: true,
                    looping: true,
                    showControls: true,
                    allowFullScreen: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 130.0,
                          height: 81.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.safePop();
                  },
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.white,
                    size: 44.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
