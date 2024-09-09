import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'notfication_model.dart';
export 'notfication_model.dart';

class NotficationWidget extends StatefulWidget {
  const NotficationWidget({super.key});

  @override
  State<NotficationWidget> createState() => _NotficationWidgetState();
}

class _NotficationWidgetState extends State<NotficationWidget> {
  late NotficationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotficationModel());
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
      backgroundColor: const Color(0xFF1F1F1F),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lottie_animations/Animation_-_1725747544020.json',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                  repeat: false,
                  animate: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
