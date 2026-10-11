import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/payment_item/payment_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'wallet_widget.dart' show WalletWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WalletModel extends FlutterFlowModel<WalletWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for PaymentItem dynamic component.
  late FlutterFlowDynamicModels<PaymentItemModel> paymentItemModels;

  @override
  void initState(BuildContext context) {
    paymentItemModels = FlutterFlowDynamicModels(() => PaymentItemModel());
  }

  @override
  void dispose() {
    paymentItemModels.dispose();
  }
}
