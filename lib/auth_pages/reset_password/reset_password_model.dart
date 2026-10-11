import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PasswordTI widget.
  FocusNode? passwordTIFocusNode;
  TextEditingController? passwordTITextController;
  late bool passwordTIVisibility;
  String? Function(BuildContext, String?)? passwordTITextControllerValidator;
  // State field(s) for ConfirmPwdTI widget.
  FocusNode? confirmPwdTIFocusNode;
  TextEditingController? confirmPwdTITextController;
  late bool confirmPwdTIVisibility;
  String? Function(BuildContext, String?)? confirmPwdTITextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTIVisibility = false;
    confirmPwdTIVisibility = false;
  }

  @override
  void dispose() {
    passwordTIFocusNode?.dispose();
    passwordTITextController?.dispose();

    confirmPwdTIFocusNode?.dispose();
    confirmPwdTITextController?.dispose();
  }
}
