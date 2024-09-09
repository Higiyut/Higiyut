import '/components/dffd_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'all_widget.dart' show AllWidget;
import 'package:flutter/material.dart';

class AllModel extends FlutterFlowModel<AllWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for dffd component.
  late DffdModel dffdModel;

  @override
  void initState(BuildContext context) {
    dffdModel = createModel(context, () => DffdModel());
  }

  @override
  void dispose() {
    dffdModel.dispose();
  }
}
