import '/backend/backend.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/schedule_item/schedule_item_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_schedule_model.dart';
export 'calendar_schedule_model.dart';

class CalendarScheduleWidget extends StatefulWidget {
  const CalendarScheduleWidget({super.key});

  static String routeName = 'CalendarSchedule';
  static String routePath = '/calendarSchedule';

  @override
  State<CalendarScheduleWidget> createState() => _CalendarScheduleWidgetState();
}

class _CalendarScheduleWidgetState extends State<CalendarScheduleWidget> {
  late CalendarScheduleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarScheduleModel());

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
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.chevron_left,
              color: FlutterFlowTheme.of(context).black,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Calendar',
            style: FlutterFlowTheme.of(context).customTextStyle1.override(
                  font: GoogleFonts.publicSans(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).customTextStyle1.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 20.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle:
                      FlutterFlowTheme.of(context).customTextStyle1.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).neutral100,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: FlutterFlowCalendar(
                      color: FlutterFlowTheme.of(context).primary,
                      iconColor: FlutterFlowTheme.of(context).neutral500,
                      weekFormat: false,
                      weekStartsMonday: true,
                      rowHeight: 48.0,
                      onChange: (DateTimeRange? newSelectedDate) async {
                        if (_model.calendarSelectedDay == newSelectedDate) {
                          return;
                        }
                        _model.calendarSelectedDay = newSelectedDate;
                        safeSetState(() {});
                        safeSetState(() {});
                      },
                      titleStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                font: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                      dayOfWeekStyle:
                          FlutterFlowTheme.of(context).bodyLarge.override(
                                font: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).neutral500,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .fontStyle,
                              ),
                      dateStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).neutral500,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      selectedDateStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.publicSans(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).white,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      inactiveDateStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                font: GoogleFonts.publicSans(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).neutral200,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .fontStyle,
                              ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                    child: StreamBuilder<List<ScheduleRecord>>(
                      stream: queryScheduleRecord(
                        queryBuilder: (scheduleRecord) => scheduleRecord
                            .where(
                              'date',
                              isGreaterThanOrEqualTo:
                                  _model.calendarSelectedDay?.start,
                            )
                            .where(
                              'date',
                              isLessThanOrEqualTo:
                                  _model.calendarSelectedDay?.end,
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
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        List<ScheduleRecord> listViewScheduleRecordList =
                            snapshot.data!;
                        if (listViewScheduleRecordList.isEmpty) {
                          return Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: EmptyComponentWidget(
                              emptyTitle: 'Nothing to show here',
                              emptyImage:
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/o2m0s4jsb3o1/empty_shift.svg',
                              emptyDesc:
                                  'Your scheduled shifts will be shown here',
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
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewScheduleRecordList.length,
                          separatorBuilder: (_, __) => SizedBox(height: 20.0),
                          itemBuilder: (context, listViewIndex) {
                            final listViewScheduleRecord =
                                listViewScheduleRecordList[listViewIndex];
                            return wrapWithModel(
                              model: _model.scheduleItemModels.getModel(
                                listViewScheduleRecord.reference.id,
                                listViewIndex,
                              ),
                              updateCallback: () => safeSetState(() {}),
                              child: ScheduleItemWidget(
                                key: Key(
                                  'Keyxcn_${listViewScheduleRecord.reference.id}',
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
