import '/backend/api_requests/api_calls.dart';
import '/components/dfggdf_widget.dart';
import '/components/dfsd_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'video_model.dart';
export 'video_model.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key});

  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: 500.0,
                child: PagedPageView<ApiPagingParams, dynamic>(
                  pagingController: _model.setPageViewController(
                    (nextPageMarker) => VideosCall.call(),
                  ),
                  pageController: _model.pageViewController ??= PageController(
                      initialPage:
                          max(0, min(0, _model.pageViewLoadedLength - 1))),
                  onPageChanged: (_) => safeSetState(() {
                    _model.pageViewLoadedLength =
                        _model.pageViewPagingController!.itemList!.length;
                  }),
                  scrollDirection: Axis.vertical,
                  builderDelegate: PagedChildBuilderDelegate<dynamic>(
                    // Customize what your widget looks like when it's loading the first page.
                    firstPageProgressIndicatorBuilder: (_) => const Center(
                      child: DfggdfWidget(),
                    ),
                    // Customize what your widget looks like when it's loading another page.
                    newPageProgressIndicatorBuilder: (_) => const Center(
                      child: DfggdfWidget(),
                    ),

                    itemBuilder: (context, _, aaaaIndex) {
                      final aaaaItem =
                          _model.pageViewPagingController!.itemList![aaaaIndex];
                      return DfsdWidget(
                        key: Key(
                            'Keyzif_${aaaaIndex}_of_${_model.pageViewPagingController!.itemList!.length}'),
                        video: aaaaItem.avatar,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
