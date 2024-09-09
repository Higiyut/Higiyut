import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'manga_model.dart';
export 'manga_model.dart';

class MangaWidget extends StatefulWidget {
  const MangaWidget({super.key});

  @override
  State<MangaWidget> createState() => _MangaWidgetState();
}

class _MangaWidgetState extends State<MangaWidget> {
  late MangaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MangaModel());
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Lottie.asset(
                  'assets/lottie_animations/Animation_-_1725746952046.json',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                  repeat: false,
                  animate: true,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
