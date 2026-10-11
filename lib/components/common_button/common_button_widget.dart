import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'common_button_model.dart';
export 'common_button_model.dart';

class CommonButtonWidget extends StatefulWidget {
  const CommonButtonWidget({
    super.key,
    required this.btnText,
    this.onTap,
  });

  final String? btnText;
  final Future Function()? onTap;

  @override
  State<CommonButtonWidget> createState() => _CommonButtonWidgetState();
}

class _CommonButtonWidgetState extends State<CommonButtonWidget> {
  late CommonButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CommonButtonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        await widget.onTap?.call();
      },
      text: widget!.btnText!,
      options: FFButtonOptions(
        width: double.infinity,
        padding: EdgeInsets.all(22.0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: FlutterFlowTheme.of(context).primary500,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              font: GoogleFonts.publicSans(
                fontWeight: FontWeight.w600,
                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
              ),
              color: Colors.white,
              fontSize: 16.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.w600,
              fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
            ),
        elevation: 0.0,
        borderRadius: BorderRadius.circular(100.0),
      ),
    );
  }
}
