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
import 'calendar_schedule_widget.dart' show CalendarScheduleWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarScheduleModel extends FlutterFlowModel<CalendarScheduleWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels;

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    scheduleItemModels = FlutterFlowDynamicModels(() => ScheduleItemModel());
  }

  @override
  void dispose() {
    scheduleItemModels.dispose();
  }
}
