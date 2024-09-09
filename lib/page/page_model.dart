import '/components/dsfs_widget.dart';
import '/components/gdf_widget.dart';
import '/components/sdcas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'page_widget.dart' show PageWidget;
import 'package:flutter/material.dart';

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
