import '/components/fggfgreg_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fdg_widget.dart' show FdgWidget;
import 'package:flutter/material.dart';

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
