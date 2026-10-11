import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'help_item_model.dart';
export 'help_item_model.dart';

class HelpItemWidget extends StatefulWidget {
  const HelpItemWidget({
    super.key,
    required this.item,
  });

  final String? item;

  @override
  State<HelpItemWidget> createState() => _HelpItemWidgetState();
}

class _HelpItemWidgetState extends State<HelpItemWidget> {
  late HelpItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FaIcon(
          FaIconData(const IconData(/* fileAlt */ 0xf15c,
              fontFamily: 'FontAwesomeRegular',
              fontPackage: 'font_awesome_flutter')),
          color: FlutterFlowTheme.of(context).primary500,
          size: 18.0,
        ),
        Expanded(
          child: Text(
            valueOrDefault<String>(
              widget!.item,
              'How do I contact customer support ?',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 15.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: FlutterFlowTheme.of(context).neutral600,
          size: 18.0,
        ),
      ].divide(SizedBox(width: 10.0)),
    );
  }
}
