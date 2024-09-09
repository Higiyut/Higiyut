import '/components/dffd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'all_model.dart';
export 'all_model.dart';

class AllWidget extends StatefulWidget {
  const AllWidget({super.key});

  @override
  State<AllWidget> createState() => _AllWidgetState();
}

class _AllWidgetState extends State<AllWidget> {
  late AllModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllModel());
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
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 12.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_12-28-54.jpg?alt=media&token=61e107c4-339c-47e6-b957-0655bc130889',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-18-27%20(2).jpg?alt=media&token=54a69b98-e61d-4550-95bf-922c1a6da552',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-25-48%20(2).jpg?alt=media&token=cbb24696-7544-4aa2-a547-8321742403dd',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-25-46.jpg?alt=media&token=80132d4b-a5d5-4456-a723-4ad84791bb17',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-29-08.jpg?alt=media&token=39dc19f1-7d6f-46a0-b94a-ce17391b0cd2',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_14-00-53%20(2).jpg?alt=media&token=a23dc4a1-dd0e-4389-a7c0-4b7485b48e2f',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_13-55-45.jpg?alt=media&token=6b208b74-a531-4952-8155-acba7193d683',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_13-55-44.jpg?alt=media&token=ba6b7f84-9a1d-43fc-aac5-0237e9b451fd',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_13-55-42.jpg?alt=media&token=721df38a-e3b8-47f6-80e9-20cd3168f549',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_13-55-40.jpg?alt=media&token=a95e1f40-14ff-4a91-857d-5279fdcc9376',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_12-17-40.jpg?alt=media&token=87ccd1cc-6d3f-42cc-890b-9f325df01867',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-51-12%20(2).jpg?alt=media&token=9e48169c-7752-4d17-9a65-37ba4d1a98a1',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-43-30.jpg?alt=media&token=347c557b-9986-4349-8b59-99cd051b4d95',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-40-42.jpg?alt=media&token=69eac1d0-c833-4984-84cd-828917936056',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-38-29.jpg?alt=media&token=9139fcab-616b-4c9a-bb8b-458206f7f3f8',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 2.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-38-27%20(2).jpg?alt=media&token=30efbaa6-673e-4801-9741-3f7d7284e497',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-38-26.jpg?alt=media&token=66c5fce1-ebac-4f14-aaec-674b5a44b3eb',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            12.0, 22.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            'https://firebasestorage.googleapis.com/v0/b/for-anime-play-p08jjv.appspot.com/o/photo_2024-03-07_11-38-23%20(2).jpg?alt=media&token=b4450795-80c7-4cdd-9d6d-ba9d9e419a30',
                            width: 108.0,
                            height: 144.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Stack(
            children: [],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 22.0),
              child: wrapWithModel(
                model: _model.dffdModel,
                updateCallback: () => safeSetState(() {}),
                child: const DffdWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
