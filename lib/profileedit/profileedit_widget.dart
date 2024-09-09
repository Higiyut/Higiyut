import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'profileedit_model.dart';
export 'profileedit_model.dart';

class ProfileeditWidget extends StatefulWidget {
  const ProfileeditWidget({super.key});

  @override
  State<ProfileeditWidget> createState() => _ProfileeditWidgetState();
}

class _ProfileeditWidgetState extends State<ProfileeditWidget> {
  late ProfileeditModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileeditModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
                    'assets/lottie_animations/Animation_-_1725745594887.json',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
