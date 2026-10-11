import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for EmailTI widget.
  FocusNode? emailTIFocusNode;
  TextEditingController? emailTITextController;
  String? Function(BuildContext, String?)? emailTITextControllerValidator;
  // State field(s) for PasswordTI widget.
  FocusNode? passwordTIFocusNode;
  TextEditingController? passwordTITextController;
  late bool passwordTIVisibility;
  String? Function(BuildContext, String?)? passwordTITextControllerValidator;
  // State field(s) for FNameTI widget.
  FocusNode? fNameTIFocusNode;
  TextEditingController? fNameTITextController;
  String? Function(BuildContext, String?)? fNameTITextControllerValidator;
  // State field(s) for LNameTI widget.
  FocusNode? lNameTIFocusNode;
  TextEditingController? lNameTITextController;
  String? Function(BuildContext, String?)? lNameTITextControllerValidator;
  // State field(s) for AddressTI widget.
  FocusNode? addressTIFocusNode;
  TextEditingController? addressTITextController;
  String? Function(BuildContext, String?)? addressTITextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTIVisibility = false;
  }

  @override
  void dispose() {
    emailTIFocusNode?.dispose();
    emailTITextController?.dispose();

    passwordTIFocusNode?.dispose();
    passwordTITextController?.dispose();

    fNameTIFocusNode?.dispose();
    fNameTITextController?.dispose();

    lNameTIFocusNode?.dispose();
    lNameTITextController?.dispose();

    addressTIFocusNode?.dispose();
    addressTITextController?.dispose();
  }
}
