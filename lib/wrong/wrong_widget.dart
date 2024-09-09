import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'wrong_model.dart';
export 'wrong_model.dart';

class WrongWidget extends StatefulWidget {
  const WrongWidget({super.key});

  @override
  State<WrongWidget> createState() => _WrongWidgetState();
}

class _WrongWidgetState extends State<WrongWidget> {
  late WrongModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WrongModel());
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
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie_animations/Animation_-_1725746271921.json',
                width: 218.0,
                height: 209.0,
                fit: BoxFit.contain,
                reverse: true,
                animate: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
