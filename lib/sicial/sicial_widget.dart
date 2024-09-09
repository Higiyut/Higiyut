import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/dsfg_widget.dart';
import '/components/fgg_widget.dart';
import '/components/sicxil_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sicial_model.dart';
export 'sicial_model.dart';

class SicialWidget extends StatefulWidget {
  const SicialWidget({super.key});

  @override
  State<SicialWidget> createState() => _SicialWidgetState();
}

class _SicialWidgetState extends State<SicialWidget> {
  late SicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SicialModel());
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 33.0, 0.0, 0.0),
            child: Stack(
              children: [
                FutureBuilder<ApiCallResponse>(
                  future: PostCall.call(),
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
                    final columnPostResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final aaa = (columnPostResponse.jsonBody
                                    .toList()
                                    .map<PostStruct?>(PostStruct.maybeFromMap)
                                    .toList() as Iterable<PostStruct?>)
                                .withoutNulls
                                ?.toList() ??
                            [];

                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(aaa.length, (aaaIndex) {
                              final aaaItem = aaa[aaaIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: DsfgWidget(
                                  key: Key(
                                      'Keyy4c_${aaaIndex}_of_${aaa.length}'),
                                  name: aaaItem.name,
                                  title: aaaItem.title,
                                  avatar: aaaItem.avatar,
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    );
                  },
                ),
                Stack(
                  children: [],
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 22.0),
                    child: wrapWithModel(
                      model: _model.sicxilModel,
                      updateCallback: () => safeSetState(() {}),
                      child: SicxilWidget(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.95, -1.04),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('video');
              },
              child: wrapWithModel(
                model: _model.fggModel,
                updateCallback: () => safeSetState(() {}),
                child: FggWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
