import '/backend/backend.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/schedule_item/schedule_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'saved_shift_widget.dart' show SavedShiftWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SavedShiftModel extends FlutterFlowModel<SavedShiftWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels;

  @override
  void initState(BuildContext context) {
    scheduleItemModels = FlutterFlowDynamicModels(() => ScheduleItemModel());
  }

  @override
  void dispose() {
    scheduleItemModels.dispose();
  }
}
