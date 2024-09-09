import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'time12_model.dart';
export 'time12_model.dart';

class Time12Widget extends StatefulWidget {
  const Time12Widget({
    super.key,
    required this.number,
    required this.title,
    required this.date,
    required this.image,
  });

  final String? number;
  final String? title;
  final String? date;
  final String? image;

  @override
  State<Time12Widget> createState() => _Time12WidgetState();
}

class _Time12WidgetState extends State<Time12Widget> {
  late Time12Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Time12Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 336.0,
            height: 197.0,
            decoration: BoxDecoration(
              color: Color(0xABF9B900),
              borderRadius: BorderRadius.circular(14.0),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget!.image!,
                    width: 337.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/photo_2024-07-04_22-36-45.png',
                          width: 54.0,
                          height: 71.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 134.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.title,
                            'title',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'elyas',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      Container(
                        width: 74.0,
                        height: 39.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFD0DD1C),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget!.date,
                              'date',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'elyas',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: Container(
                    width: 93.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF0D0404),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(55.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.number,
                            'number',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'elyas',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
