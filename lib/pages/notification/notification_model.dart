import '/backend/backend.dart';
import '/components/empty_component/empty_component_widget.dart';
import '/components/notification_item/notification_item_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for NotificationItem dynamic component.
  late FlutterFlowDynamicModels<NotificationItemModel> notificationItemModels;

  @override
  void initState(BuildContext context) {
    notificationItemModels =
        FlutterFlowDynamicModels(() => NotificationItemModel());
  }

  @override
  void dispose() {
    notificationItemModels.dispose();
  }
}
