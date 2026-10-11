import '/auth/firebase_auth/auth_util.dart';
import '/components/common_button/common_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'change_password_widget.dart' show ChangePasswordWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel<ChangePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CurrentPasswordTI widget.
  FocusNode? currentPasswordTIFocusNode;
  TextEditingController? currentPasswordTITextController;
  late bool currentPasswordTIVisibility;
  String? Function(BuildContext, String?)?
      currentPasswordTITextControllerValidator;
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
  // Model for CommonButton component.
  late CommonButtonModel commonButtonModel;

  @override
  void initState(BuildContext context) {
    currentPasswordTIVisibility = false;
    passwordTIVisibility = false;
    confirmPwdTIVisibility = false;
    commonButtonModel = createModel(context, () => CommonButtonModel());
  }

  @override
  void dispose() {
    currentPasswordTIFocusNode?.dispose();
    currentPasswordTITextController?.dispose();

    passwordTIFocusNode?.dispose();
    passwordTITextController?.dispose();

    confirmPwdTIFocusNode?.dispose();
    confirmPwdTITextController?.dispose();

    commonButtonModel.dispose();
  }
}
