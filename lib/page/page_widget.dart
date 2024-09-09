import '/auth/firebase_auth/auth_util.dart';
import '/components/dsfs_widget.dart';
import '/components/gdf_widget.dart';
import '/components/sdcas_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'page_model.dart';
export 'page_model.dart';

class PageWidget extends StatefulWidget {
  const PageWidget({super.key});

  @override
  State<PageWidget> createState() => _PageWidgetState();
}

class _PageWidgetState extends State<PageWidget> with TickerProviderStateMixin {
  late PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasToggleIconTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageModel());

    animationsMap.addAll({
      'toggleIconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF1F1F1F),
      body: Stack(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 439.0,
                          decoration: BoxDecoration(
                            color: Color(0x00FFFFFF),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/photo_2024-07-10_15-45-09_(2).jpg',
                              width: 300.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 440.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x001F1F1F), Color(0xFF1F1F1F)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.0, -1.0),
                              end: AlignmentDirectional(0, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              38.0, 488.0, 38.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 141.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF6BC00),
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('blue');
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 38.0,
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 22.0, 5.0),
                                        child: AutoSizeText(
                                          'بینین',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'elyas',
                                                color: Color(0xFFEBEFF2),
                                                fontSize: 24.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 141.0,
                                height: 42.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(
                                    color: Color(0xFFFFF500),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 5.0),
                                          child: ToggleIcon(
                                            onPressed: () async {
                                              safeSetState(
                                                () => FFAppState().fgdf.contains(
                                                        currentUserReference)
                                                    ? FFAppState().removeFromFgdf(
                                                        currentUserReference!)
                                                    : FFAppState().addToFgdf(
                                                        currentUserReference!),
                                              );
                                            },
                                            value: FFAppState()
                                                .fgdf
                                                .contains(currentUserReference),
                                            onIcon: Icon(
                                              Icons.bookmark_added,
                                              color: Color(0xFFF88708),
                                              size: 25.0,
                                            ),
                                            offIcon: Icon(
                                              Icons.bookmark_border,
                                              color: Color(0xFFFD7208),
                                              size: 25.0,
                                            ),
                                          ).animateOnActionTrigger(
                                              animationsMap[
                                                  'toggleIconOnActionTriggerAnimation']!,
                                              hasBeenTriggered:
                                                  hasToggleIconTriggered),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 3.0, 0.0, 0.0),
                                          child: AutoSizeText(
                                            'دڵخواز',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'elyas',
                                                  color: Color(0xFFF2F2F1),
                                                  fontSize: 24.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              66.0, 450.0, 66.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFD6500),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text(
                                'سەرکێشی',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'elyas',
                                      color: Color(0xFFFCFEFF),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFD6500),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text(
                                'ئالۆز',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'elyas',
                                      color: Color(0xFFEFF3F6),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 4.0, 0.0),
                                child: Container(
                                  width: 4.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFD6500),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                              Text(
                                'وەرزشی',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'elyas',
                                      color: Color(0xFFFAFBFB),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 388.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'بلولۆک',
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'elyas',
                                      fontSize: 33.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              9.0, 0.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6.0),
                            child: Image.asset(
                              'assets/images/photo_2024-07-04_22-36-45.png',
                              width: 32.0,
                              height: 57.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'پڕبینەرترین',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'elyas',
                                        color: Color(0xFFE6E8EA),
                                        fontSize: 22.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 196.0,
                        decoration: BoxDecoration(
                          color: Color(0x00FFFFFF),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                        ),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.gdfModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: GdfWidget(
                                  efe:
                                      'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_12-28-54.jpg?alt=media&token=61e107c4-339c-47e6-b957-0655bc130889',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.gdfModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: GdfWidget(
                                  efe:
                                      'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-18-27%20(2).jpg?alt=media&token=54a69b98-e61d-4550-95bf-922c1a6da552',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.gdfModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: GdfWidget(
                                  efe:
                                      'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-25-46.jpg?alt=media&token=80132d4b-a5d5-4456-a723-4ad84791bb17',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.gdfModel4,
                                updateCallback: () => safeSetState(() {}),
                                child: GdfWidget(
                                  efe:
                                      'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-25-48%20(2).jpg?alt=media&token=cbb24696-7544-4aa2-a547-8321742403dd',
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.gdfModel5,
                                updateCallback: () => safeSetState(() {}),
                                child: GdfWidget(
                                  efe:
                                      'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-25-50.jpg?alt=media&token=aa2cd743-58c2-4ee6-a905-d79ae849d8f8',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.sdcasModel,
                              updateCallback: () => safeSetState(() {}),
                              child: SdcasWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.network(
                                'https://picsum.photos/seed/409/600',
                                width: 126.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/409/600',
                                  width: 126.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/409/600',
                                  width: 126.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Image.network(
                                  'https://picsum.photos/seed/409/600',
                                  width: 126.0,
                                  height: 200.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Stack(
              children: [],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 22.0),
              child: wrapWithModel(
                model: _model.dsfsModel,
                updateCallback: () => safeSetState(() {}),
                child: DsfsWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
