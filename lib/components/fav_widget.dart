import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fav_model.dart';
export 'fav_model.dart';

class FavWidget extends StatefulWidget {
  const FavWidget({super.key});

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {
  late FavModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FavModel());
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
              Icon(
                Icons.home_rounded,
                color: Color(0xFFF6F9FB),
                size: 24.0,
              ),
              Icon(
                Icons.search_sharp,
                color: Color(0xFFF6F9FB),
                size: 24.0,
              ),
              Icon(
                Icons.all_out,
                color: Color(0xFFF4F2EF),
                size: 24.0,
              ),
              Icon(
                Icons.bookmarks_rounded,
                color: Color(0xFFFF8E00),
                size: 24.0,
              ),
              Icon(
                Icons.photo_filter_outlined,
                color: Color(0xFFF6F9FB),
                size: 24.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
