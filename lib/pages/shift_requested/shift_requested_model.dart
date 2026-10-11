import '/components/common_button/common_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'shift_requested_widget.dart' show ShiftRequestedWidget;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShiftRequestedModel extends FlutterFlowModel<ShiftRequestedWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for CommonButton component.
  late CommonButtonModel commonButtonModel;

  @override
  void initState(BuildContext context) {
    commonButtonModel = createModel(context, () => CommonButtonModel());
  }

  @override
  void dispose() {
    commonButtonModel.dispose();
  }
}
