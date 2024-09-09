import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dsfs_model.dart';
export 'dsfs_model.dart';

class DsfsWidget extends StatefulWidget {
  const DsfsWidget({super.key});

  @override
  State<DsfsWidget> createState() => _DsfsWidgetState();
}

class _DsfsWidgetState extends State<DsfsWidget> {
  late DsfsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DsfsModel());
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
        width: 319.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: Color(0xBC05050F),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 9.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.home_rounded,
                color: Color(0xFFF59B05),
                size: 24.0,
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
                  Icons.photo_filter_rounded,
                  color: Color(0xFFFAFBFD),
                  size: 24.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed('all');
                },
                child: Icon(
                  Icons.all_out,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
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
                  color: Color(0xFFF8F7F7),
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
                  Icons.face_6,
                  color: Color(0xFFF8F8F9),
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
