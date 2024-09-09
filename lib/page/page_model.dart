import '/auth/firebase_auth/auth_util.dart';
import '/components/dsfs_widget.dart';
import '/components/gdf_widget.dart';
import '/components/sdcas_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'page_widget.dart' show PageWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PageModel extends FlutterFlowModel<PageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for gdf component.
  late GdfModel gdfModel1;
  // Model for gdf component.
  late GdfModel gdfModel2;
  // Model for gdf component.
  late GdfModel gdfModel3;
  // Model for gdf component.
  late GdfModel gdfModel4;
  // Model for gdf component.
  late GdfModel gdfModel5;
  // Model for sdcas component.
  late SdcasModel sdcasModel;
  // Model for dsfs component.
  late DsfsModel dsfsModel;

  @override
  void initState(BuildContext context) {
    gdfModel1 = createModel(context, () => GdfModel());
    gdfModel2 = createModel(context, () => GdfModel());
    gdfModel3 = createModel(context, () => GdfModel());
    gdfModel4 = createModel(context, () => GdfModel());
    gdfModel5 = createModel(context, () => GdfModel());
    sdcasModel = createModel(context, () => SdcasModel());
    dsfsModel = createModel(context, () => DsfsModel());
  }

  @override
  void dispose() {
    gdfModel1.dispose();
    gdfModel2.dispose();
    gdfModel3.dispose();
    gdfModel4.dispose();
    gdfModel5.dispose();
    sdcasModel.dispose();
    dsfsModel.dispose();
  }
}
