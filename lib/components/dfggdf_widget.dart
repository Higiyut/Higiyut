import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'dfggdf_model.dart';
export 'dfggdf_model.dart';

class DfggdfWidget extends StatefulWidget {
  const DfggdfWidget({super.key});

  @override
  State<DfggdfWidget> createState() => _DfggdfWidgetState();
}

class _DfggdfWidgetState extends State<DfggdfWidget>
    with TickerProviderStateMixin {
  late DfggdfModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DfggdfModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOutQuint,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0xD1FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x8AFFFFFF),
            angle: 0.524,
          ),
        ],
      ),
      'iconOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation1']!),
        Align(
          alignment: const AlignmentDirectional(0.91, -0.94),
          child: Container(
            width: 44.0,
            height: 44.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              shape: BoxShape.circle,
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation2']!),
        ),
        Align(
          alignment: const AlignmentDirectional(0.9, 0.09),
          child: Icon(
            Icons.favorite_rounded,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 55.0,
          ).animateOnPageLoad(animationsMap['iconOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
