import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dsfg_model.dart';
export 'dsfg_model.dart';

class DsfgWidget extends StatefulWidget {
  const DsfgWidget({
    super.key,
    required this.name,
    required this.title,
    required this.avatar,
  });

  final String? name;
  final String? title;
  final String? avatar;

  @override
  State<DsfgWidget> createState() => _DsfgWidgetState();
}

class _DsfgWidgetState extends State<DsfgWidget> with TickerProviderStateMixin {
  late DsfgModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DsfgModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.elasticOut,
            delay: 0.0.ms,
            duration: 750.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
          ScaleEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 750.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 9.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.name,
                            'name',
                          ),
                          maxLines: 20,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'elyas',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 448.0,
                    decoration: BoxDecoration(
                      color: Color(0x00F7FAFB),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        widget!.avatar!,
                        width: 300.0,
                        height: 232.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.91, 0.16),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 11.0, 0.0, 0.0),
                        child: ToggleIcon(
                          onPressed: () async {
                            safeSetState(
                              () => FFAppState()
                                      .fgdf
                                      .contains(currentUserReference)
                                  ? FFAppState()
                                      .removeFromFgdf(currentUserReference!)
                                  : FFAppState()
                                      .addToFgdf(currentUserReference!),
                            );
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              await animationsMap[
                                      'iconOnActionTriggerAnimation']!
                                  .controller
                                  .forward(from: 0.0);
                            }
                          },
                          value:
                              FFAppState().fgdf.contains(currentUserReference),
                          onIcon: Icon(
                            Icons.favorite_rounded,
                            color: Color(0xFFEE8D09),
                            size: 25.0,
                          ),
                          offIcon: Icon(
                            Icons.favorite_border_rounded,
                            color: Colors.white,
                            size: 33.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 500.0, 20.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.title,
                        'title',
                      ),
                      maxLines: 300,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'elyas',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: Color(0x0014181B),
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(67.0, 7.0, 0.0, 0.0),
              child: Text(
                '4AnimePlay',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'elyas',
                      color: Color(0xFFF7F4EE),
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            if ((currentUserDocument?.like?.toList() ?? [])
                    .contains(currentUserReference) ==
                true)
              Align(
                alignment: AlignmentDirectional(-0.01, 0.48),
                child: AuthUserStreamWidget(
                  builder: (context) => Icon(
                    Icons.favorite_rounded,
                    color: Color(0xFFEC9205),
                    size: 88.0,
                  ).animateOnActionTrigger(
                    animationsMap['iconOnActionTriggerAnimation']!,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
