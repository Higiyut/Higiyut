import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/time12_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'time_model.dart';
export 'time_model.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({super.key});

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  late TimeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: FutureBuilder<ApiCallResponse>(
              future: TimeCall.call(),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                final columnTimeResponse = snapshot.data!;

                return Builder(
                  builder: (context) {
                    final aaaa = (columnTimeResponse.jsonBody
                                .toList()
                                .map<Time2Struct?>(Time2Struct.maybeFromMap)
                                .toList() as Iterable<Time2Struct?>)
                            .withoutNulls
                            .toList() ??
                        [];

                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(aaaa.length, (aaaaIndex) {
                          final aaaaItem = aaaa[aaaaIndex];
                          return Time12Widget(
                            key: Key('Keyeyb_${aaaaIndex}_of_${aaaa.length}'),
                            number: aaaaItem.name,
                            title: aaaaItem.title,
                            date: aaaaItem.createdAt,
                            image: aaaaItem.avatar,
                          );
                        }),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.0, -0.96),
                child: Icon(
                  Icons.chevron_left_rounded,
                  color: Color(0xFF070E13),
                  size: 44.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
