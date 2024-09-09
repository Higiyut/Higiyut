import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'gdf_model.dart';
export 'gdf_model.dart';

class GdfWidget extends StatefulWidget {
  const GdfWidget({
    super.key,
    required this.efe,
  });

  final String? efe;

  @override
  State<GdfWidget> createState() => _GdfWidgetState();
}

class _GdfWidgetState extends State<GdfWidget> {
  late GdfModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GdfModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        widget.efe!,
        width: 129.0,
        height: 200.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
