import '/components/fggfgreg_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'fdg_widget.dart' show FdgWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FdgModel extends FlutterFlowModel<FdgWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for fggfgreg component.
  late FggfgregModel fggfgregModel;

  @override
  void initState(BuildContext context) {
    fggfgregModel = createModel(context, () => FggfgregModel());
  }

  @override
  void dispose() {
    fggfgregModel.dispose();
  }
}
