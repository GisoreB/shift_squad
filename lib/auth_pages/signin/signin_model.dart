import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'signin_widget.dart' show SigninWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SigninModel extends FlutterFlowModel<SigninWidget> {
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
  }
}
