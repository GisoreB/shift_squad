import '/backend/backend.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/schedule_item/schedule_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'saved_shift_model.dart';
export 'saved_shift_model.dart';

class SavedShiftWidget extends StatefulWidget {
  const SavedShiftWidget({super.key});

  static String routeName = 'SavedShift';
  static String routePath = '/savedShift';

  @override
  State<SavedShiftWidget> createState() => _SavedShiftWidgetState();
}

class _SavedShiftWidgetState extends State<SavedShiftWidget> {
  late SavedShiftModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SavedShiftModel());

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
            'Saved Shifts',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: StreamBuilder<List<ScheduleRecord>>(
                    stream: queryScheduleRecord(
                      queryBuilder: (scheduleRecord) => scheduleRecord.where(
                        'isFav',
                        isEqualTo: true,
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
                            emptyDesc:
                                'You can save shifts if you want to check on them later',
                            emptyTitle: 'No saved shifts',
                            emptyImage:
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/fdj8f32avj9j/empty_saved.svg',
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
                                'Key3na_${listViewScheduleRecord.reference.id}',
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
        ),
      ),
    );
  }
}
