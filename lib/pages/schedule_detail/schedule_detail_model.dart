import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/components/shift_type_container/shift_type_container_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'schedule_detail_widget.dart' show ScheduleDetailWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleDetailModel extends FlutterFlowModel<ScheduleDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ShiftTypeContainer component.
  late ShiftTypeContainerModel shiftTypeContainerModel;

  @override
  void initState(BuildContext context) {
    shiftTypeContainerModel =
        createModel(context, () => ShiftTypeContainerModel());
  }

  @override
  void dispose() {
    shiftTypeContainerModel.dispose();
  }
}
