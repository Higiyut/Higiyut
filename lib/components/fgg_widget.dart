import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'fgg_model.dart';
export 'fgg_model.dart';

class FggWidget extends StatefulWidget {
  const FggWidget({super.key});

  @override
  State<FggWidget> createState() => _FggWidgetState();
}

class _FggWidgetState extends State<FggWidget> {
  late FggModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FggModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(22.0, 22.0, 0.0, 0.0),
      child: Container(
        width: 35.0,
        height: 35.0,
        decoration: const BoxDecoration(
          color: Color(0xB6020106),
          shape: BoxShape.circle,
        ),
        child: const Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Icon(
            Icons.play_circle_rounded,
            color: Colors.white,
            size: 22.0,
          ),
        ),
      ),
    );
  }
}
