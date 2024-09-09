import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'whatswss_model.dart';
export 'whatswss_model.dart';

class WhatswssWidget extends StatefulWidget {
  const WhatswssWidget({super.key});

  @override
  State<WhatswssWidget> createState() => _WhatswssWidgetState();
}

class _WhatswssWidgetState extends State<WhatswssWidget>
    with TickerProviderStateMixin {
  late WhatswssModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhatswssModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          BlurEffect(
            curve: Curves.linear,
            delay: 380.0.ms,
            duration: 1670.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(4.0, 4.0),
          ),
        ],
      ),
    });
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
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/221c8e898aeee45d6ec6cca3a0fed99e.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
          Align(
            alignment: AlignmentDirectional(-0.01, 0.02),
            child: Lottie.asset(
              'assets/lottie_animations/Animation_-_1725796005935.json',
              width: 401.0,
              height: 470.0,
              fit: BoxFit.contain,
              repeat: false,
              animate: true,
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.06, 0.82),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('rigster');
              },
              text: 'بەشداریکردن',
              options: FFButtonOptions(
                height: 44.0,
                padding: EdgeInsetsDirectional.fromSTEB(66.0, 0.0, 66.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Color(0x95FF8E00),
                textStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'elyas',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderSide: BorderSide(
                  color: Color(0x89F9F1F1),
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
