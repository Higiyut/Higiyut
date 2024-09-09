import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sicxil_model.dart';
export 'sicxil_model.dart';

class SicxilWidget extends StatefulWidget {
  const SicxilWidget({super.key});

  @override
  State<SicxilWidget> createState() => _SicxilWidgetState();
}

class _SicxilWidgetState extends State<SicxilWidget> {
  late SicxilModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SicxilModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10.0, 23.0, 10.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0xBC05050F),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
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
                child: const Icon(
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
                  context.pushNamed('profil');
                },
                child: const Icon(
                  Icons.search_sharp,
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
                  context.pushNamed('search');
                },
                child: const Icon(
                  Icons.all_out,
                  color: Color(0xFFF4F2EF),
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
                child: const Icon(
                  Icons.bookmarks_rounded,
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
