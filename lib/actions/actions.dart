import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Future commingSoonSnack(BuildContext context) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Comming Soon...',
        style: FlutterFlowTheme.of(context).bodyLarge.override(
              font: GoogleFonts.publicSans(
                fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyLarge.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyLarge.fontStyle,
            ),
      ),
      duration: Duration(milliseconds: 2000),
      backgroundColor: FlutterFlowTheme.of(context).primary200,
    ),
  );
}
