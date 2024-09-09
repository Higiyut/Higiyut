import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/dsfg_widget.dart';
import '/components/fgg_widget.dart';
import '/components/sicxil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sicial_widget.dart' show SicialWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SicialModel extends FlutterFlowModel<SicialWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for sicxil component.
  late SicxilModel sicxilModel;
  // Model for fgg component.
  late FggModel fggModel;

  @override
  void initState(BuildContext context) {
    sicxilModel = createModel(context, () => SicxilModel());
    fggModel = createModel(context, () => FggModel());
  }

  @override
  void dispose() {
    sicxilModel.dispose();
    fggModel.dispose();
  }
}
