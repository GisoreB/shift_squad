import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'shift_type_container_model.dart';
export 'shift_type_container_model.dart';

class ShiftTypeContainerWidget extends StatefulWidget {
  const ShiftTypeContainerWidget({
    super.key,
    this.type,
  });

  final ScheduleEnum? type;

  @override
  State<ShiftTypeContainerWidget> createState() =>
      _ShiftTypeContainerWidgetState();
}

class _ShiftTypeContainerWidgetState extends State<ShiftTypeContainerWidget> {
  late ShiftTypeContainerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShiftTypeContainerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if (widget!.type == ScheduleEnum.Requested) {
              return FlutterFlowTheme.of(context).warning600;
            } else if (widget!.type == ScheduleEnum.Ongoing) {
              return FlutterFlowTheme.of(context).secondary600;
            } else if (widget!.type == ScheduleEnum.Cancelled) {
              return FlutterFlowTheme.of(context).error500;
            } else {
              return FlutterFlowTheme.of(context).success500;
            }
          }(),
          FlutterFlowTheme.of(context).success500,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 10.0),
        child: Text(
          widget!.type!.name,
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.publicSans(
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).white,
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
      ),
    );
  }
}
