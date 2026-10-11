import '/backend/backend.dart';
import '/components/shift_type_container/shift_type_container_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'schedule_item_widget.dart' show ScheduleItemWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScheduleItemModel extends FlutterFlowModel<ScheduleItemWidget> {
  ///  Local state fields for this component.

  bool isSelected = false;

  ///  State fields for stateful widgets in this component.

  // Model for ShiftTypeContainer component.
  late ShiftTypeContainerModel shiftTypeContainerModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

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
