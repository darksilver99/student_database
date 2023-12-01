import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'total_student_view_model.dart';
export 'total_student_view_model.dart';

class TotalStudentViewWidget extends StatefulWidget {
  const TotalStudentViewWidget({
    Key? key,
    required this.roomParameter,
  }) : super(key: key);

  final ClassRoomListRecord? roomParameter;

  @override
  _TotalStudentViewWidgetState createState() => _TotalStudentViewWidgetState();
}

class _TotalStudentViewWidgetState extends State<TotalStudentViewWidget> {
  late TotalStudentViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TotalStudentViewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<int>(
      future: queryStudentListRecordCount(
        queryBuilder: (studentListRecord) => studentListRecord.where(
          'room_ref',
          isEqualTo: widget.roomParameter?.reference,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        int textCount = snapshot.data!;
        return Text(
          '${formatNumber(
            textCount,
            formatType: FormatType.decimal,
            decimalType: DecimalType.automatic,
          )} คน',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Montserrat',
                fontSize: 28.0,
              ),
        );
      },
    );
  }
}
