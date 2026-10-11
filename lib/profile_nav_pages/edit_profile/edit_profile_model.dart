import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/common_button/common_button_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

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
  // Model for CommonButton component.
  late CommonButtonModel commonButtonModel;

  @override
  void initState(BuildContext context) {
    commonButtonModel = createModel(context, () => CommonButtonModel());
  }

  @override
  void dispose() {
    fNameTIFocusNode?.dispose();
    fNameTITextController?.dispose();

    lNameTIFocusNode?.dispose();
    lNameTITextController?.dispose();

    addressTIFocusNode?.dispose();
    addressTITextController?.dispose();

    commonButtonModel.dispose();
  }
}
