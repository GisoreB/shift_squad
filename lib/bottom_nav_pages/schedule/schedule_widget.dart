import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/schedule_item/schedule_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'schedule_model.dart';
export 'schedule_model.dart';

class ScheduleWidget extends StatefulWidget {
  const ScheduleWidget({super.key});

  static String routeName = 'Schedule';
  static String routePath = '/schedule';

  @override
  State<ScheduleWidget> createState() => _ScheduleWidgetState();
}

class _ScheduleWidgetState extends State<ScheduleWidget>
    with TickerProviderStateMixin {
  late ScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScheduleModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )
      ..addListener(() => safeSetState(() {}))
      ..addListener(() async {
        if (_model.tabBarController!.indexIsChanging) {
          return;
        }

        _model.selectedTabIndex = _model.tabBarCurrentIndex;
        safeSetState(() {});
      });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Schedule',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.publicSans(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).black,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.pushNamed(CalendarScheduleWidget.routeName);
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: SvgPicture.asset(
                    'assets/images/calendar.svg',
                    width: 42.0,
                    height: 42.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 60.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: FlutterFlowTheme.of(context).primary500,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).neutral500,
                          labelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.publicSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          unselectedLabelStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    font: GoogleFonts.publicSans(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          tabs: [
                            Tab(
                              text: 'All',
                            ),
                            Tab(
                              text: 'Upcoming',
                            ),
                            Tab(
                              text: 'Ongoing',
                            ),
                            Tab(
                              text: 'Past',
                            ),
                          ],
                          controller: _model.tabBarController,
                          onTap: (i) async {
                            [
                              () async {},
                              () async {},
                              () async {},
                              () async {}
                            ][i]();
                          },
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ScheduleRecord>
                                      listViewScheduleRecordList =
                                      snapshot.data!;
                                  if (listViewScheduleRecordList.isEmpty) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: EmptyComponentWidget(
                                        emptyDesc:
                                            'Your scheduled shifts will be shown here',
                                        emptyTitle: 'Nothing is scheduled yet',
                                        emptyImage:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/o2m0s4jsb3o1/empty_shift.svg',
                                      ),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      16.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewScheduleRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewScheduleRecord =
                                          listViewScheduleRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.scheduleItemModels1.getModel(
                                          listViewScheduleRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ScheduleItemWidget(
                                          key: Key(
                                            'Key8fg_${listViewScheduleRecord.reference.id}',
                                          ),
                                          item: listViewScheduleRecord,
                                          onTapItem: () async {
                                            context.pushNamed(
                                              ScheduleDetailWidget.routeName,
                                              queryParameters: {
                                                'shift': serializeParam(
                                                  listViewScheduleRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'shift': listViewScheduleRecord,
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(
                                  queryBuilder: (scheduleRecord) =>
                                      scheduleRecord.where(
                                    'type',
                                    isEqualTo:
                                        ScheduleEnum.Scheduled.serialize(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ScheduleRecord>
                                      listViewScheduleRecordList =
                                      snapshot.data!;
                                  if (listViewScheduleRecordList.isEmpty) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: EmptyComponentWidget(
                                        emptyDesc:
                                            'Your upcoming shifts will be shown here',
                                        emptyTitle: 'No upcoming shifts',
                                        emptyImage:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/o2m0s4jsb3o1/empty_shift.svg',
                                      ),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      16.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewScheduleRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewScheduleRecord =
                                          listViewScheduleRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.scheduleItemModels2.getModel(
                                          listViewScheduleRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ScheduleItemWidget(
                                          key: Key(
                                            'Keyeac_${listViewScheduleRecord.reference.id}',
                                          ),
                                          item: listViewScheduleRecord,
                                          onTapItem: () async {
                                            context.pushNamed(
                                              ScheduleDetailWidget.routeName,
                                              queryParameters: {
                                                'shift': serializeParam(
                                                  listViewScheduleRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'shift': listViewScheduleRecord,
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(
                                  queryBuilder: (scheduleRecord) =>
                                      scheduleRecord.where(
                                    'type',
                                    isEqualTo: ScheduleEnum.Ongoing.serialize(),
                                  ),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ScheduleRecord>
                                      listViewScheduleRecordList =
                                      snapshot.data!;
                                  if (listViewScheduleRecordList.isEmpty) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: EmptyComponentWidget(
                                        emptyDesc:
                                            'Your ongoing shifts will be shown here',
                                        emptyTitle: 'No running shifts',
                                        emptyImage:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/o2m0s4jsb3o1/empty_shift.svg',
                                      ),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      16.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewScheduleRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewScheduleRecord =
                                          listViewScheduleRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.scheduleItemModels3.getModel(
                                          listViewScheduleRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ScheduleItemWidget(
                                          key: Key(
                                            'Keycys_${listViewScheduleRecord.reference.id}',
                                          ),
                                          item: listViewScheduleRecord,
                                          onTapItem: () async {
                                            context.pushNamed(
                                              ScheduleDetailWidget.routeName,
                                              queryParameters: {
                                                'shift': serializeParam(
                                                  listViewScheduleRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'shift': listViewScheduleRecord,
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: StreamBuilder<List<ScheduleRecord>>(
                                stream: queryScheduleRecord(
                                  queryBuilder: (scheduleRecord) =>
                                      scheduleRecord.where(Filter.or(
                                    Filter(
                                      'type',
                                      isEqualTo:
                                          ScheduleEnum.Completed.serialize(),
                                    ),
                                    Filter(
                                      'type',
                                      isEqualTo:
                                          ScheduleEnum.Cancelled.serialize(),
                                    ),
                                  )),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<ScheduleRecord>
                                      listViewScheduleRecordList =
                                      snapshot.data!;
                                  if (listViewScheduleRecordList.isEmpty) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: EmptyComponentWidget(
                                        emptyDesc:
                                            'Your completed and cancelled shifts will be shown here',
                                        emptyTitle: 'Nothing to show here',
                                        emptyImage:
                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/o2m0s4jsb3o1/empty_shift.svg',
                                      ),
                                    );
                                  }

                                  return ListView.separated(
                                    padding: EdgeInsets.fromLTRB(
                                      0,
                                      0,
                                      0,
                                      16.0,
                                    ),
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewScheduleRecordList.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 20.0),
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewScheduleRecord =
                                          listViewScheduleRecordList[
                                              listViewIndex];
                                      return wrapWithModel(
                                        model:
                                            _model.scheduleItemModels4.getModel(
                                          listViewScheduleRecord.reference.id,
                                          listViewIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ScheduleItemWidget(
                                          key: Key(
                                            'Key3qg_${listViewScheduleRecord.reference.id}',
                                          ),
                                          item: listViewScheduleRecord,
                                          onTapItem: () async {
                                            context.pushNamed(
                                              ScheduleDetailWidget.routeName,
                                              queryParameters: {
                                                'shift': serializeParam(
                                                  listViewScheduleRecord,
                                                  ParamType.Document,
                                                ),
                                              }.withoutNulls,
                                              extra: <String, dynamic>{
                                                'shift': listViewScheduleRecord,
                                              },
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
