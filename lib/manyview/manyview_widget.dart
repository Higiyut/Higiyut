import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'manyview_model.dart';
export 'manyview_model.dart';

class ManyviewWidget extends StatefulWidget {
  const ManyviewWidget({super.key});

  @override
  State<ManyviewWidget> createState() => _ManyviewWidgetState();
}

class _ManyviewWidgetState extends State<ManyviewWidget> {
  late ManyviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManyviewModel());
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
      backgroundColor: Color(0xFF1F1F1F),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset(
                  'assets/lottie_animations/Animation_-_1725746055477.json',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                  reverse: true,
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
