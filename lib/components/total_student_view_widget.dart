import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'total_student_view_model.dart';
export 'total_student_view_model.dart';

class TotalStudentViewWidget extends StatefulWidget {
  const TotalStudentViewWidget({Key? key}) : super(key: key);

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

    return Text(
      '40 คน',
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Montserrat',
            fontSize: 28.0,
          ),
    );
  }
}
