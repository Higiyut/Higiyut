import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dffd_model.dart';
export 'dffd_model.dart';

class DffdWidget extends StatefulWidget {
  const DffdWidget({super.key});

  @override
  State<DffdWidget> createState() => _DffdWidgetState();
}

class _DffdWidgetState extends State<DffdWidget> with TickerProviderStateMixin {
  late DffdModel _model;

  var hasIconTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DffdModel());

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0xFBFFFFFF),
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10.0, 23.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: Color(0xBC05050F),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('page');
                },
                child: Icon(
                  Icons.home_rounded,
                  color: Color(0xFFF6F9FB),
                  size: 24.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('sicial');
                },
                child: Icon(
                  Icons.photo_filter_outlined,
                  color: Color(0xFFF6F9FB),
                  size: 24.0,
                ),
              ),
              Icon(
                Icons.all_out,
                color: Color(0xFFFFA809),
                size: 24.0,
              ).animateOnActionTrigger(
                  animationsMap['iconOnActionTriggerAnimation']!,
                  hasBeenTriggered: hasIconTriggered),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('favort');
                },
                child: Icon(
                  Icons.bookmarks_rounded,
                  color: Color(0xFFF6F9FB),
                  size: 24.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('profil');
                },
                child: Icon(
                  Icons.face,
                  color: Color(0xFFF6F9FB),
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
