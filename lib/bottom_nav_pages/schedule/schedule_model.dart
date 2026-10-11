import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/schedule_item/schedule_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'schedule_widget.dart' show ScheduleWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleModel extends FlutterFlowModel<ScheduleWidget> {
  ///  Local state fields for this page.

  int selectedTabIndex = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels1;
  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels2;
  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels3;
  // Models for ScheduleItem dynamic component.
  late FlutterFlowDynamicModels<ScheduleItemModel> scheduleItemModels4;

  @override
  void initState(BuildContext context) {
    scheduleItemModels1 = FlutterFlowDynamicModels(() => ScheduleItemModel());
    scheduleItemModels2 = FlutterFlowDynamicModels(() => ScheduleItemModel());
    scheduleItemModels3 = FlutterFlowDynamicModels(() => ScheduleItemModel());
    scheduleItemModels4 = FlutterFlowDynamicModels(() => ScheduleItemModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    scheduleItemModels1.dispose();
    scheduleItemModels2.dispose();
    scheduleItemModels3.dispose();
    scheduleItemModels4.dispose();
  }
}
