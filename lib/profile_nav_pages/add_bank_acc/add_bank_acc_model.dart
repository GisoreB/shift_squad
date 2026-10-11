import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/common_button/common_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'add_bank_acc_widget.dart' show AddBankAccWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddBankAccModel extends FlutterFlowModel<AddBankAccWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for RoutingTI widget.
  FocusNode? routingTIFocusNode;
  TextEditingController? routingTITextController;
  String? Function(BuildContext, String?)? routingTITextControllerValidator;
  // State field(s) for accountTI widget.
  FocusNode? accountTIFocusNode;
  TextEditingController? accountTITextController;
  String? Function(BuildContext, String?)? accountTITextControllerValidator;
  // Model for CommonButton component.
  late CommonButtonModel commonButtonModel;

  @override
  void initState(BuildContext context) {
    commonButtonModel = createModel(context, () => CommonButtonModel());
  }

  @override
  void dispose() {
    routingTIFocusNode?.dispose();
    routingTITextController?.dispose();

    accountTIFocusNode?.dispose();
    accountTITextController?.dispose();

    commonButtonModel.dispose();
  }
}
