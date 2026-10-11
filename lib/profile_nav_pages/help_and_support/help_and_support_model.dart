import '/backend/backend.dart';
import '/components/help_item/help_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'help_and_support_widget.dart' show HelpAndSupportWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class HelpAndSupportModel extends FlutterFlowModel<HelpAndSupportWidget> {
  ///  Local state fields for this page.

  bool isSearch = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<String> simpleSearchResults = [];
  // Models for helpItem dynamic component.
  late FlutterFlowDynamicModels<HelpItemModel> helpItemModels1;
  // Models for helpItem dynamic component.
  late FlutterFlowDynamicModels<HelpItemModel> helpItemModels2;

  @override
  void initState(BuildContext context) {
    helpItemModels1 = FlutterFlowDynamicModels(() => HelpItemModel());
    helpItemModels2 = FlutterFlowDynamicModels(() => HelpItemModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    helpItemModels1.dispose();
    helpItemModels2.dispose();
  }
}
