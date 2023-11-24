import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'classroom_from_page_widget.dart' show ClassroomFromPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClassroomFromPageModel extends FlutterFlowModel<ClassroomFromPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for years widget.
  FocusNode? yearsFocusNode;
  TextEditingController? yearsController;
  String? Function(BuildContext, String?)? yearsControllerValidator;
  String? _yearsControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for term widget.
  FocusNode? termFocusNode;
  TextEditingController? termController;
  String? Function(BuildContext, String?)? termControllerValidator;
  String? _termControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for room widget.
  FocusNode? roomFocusNode;
  TextEditingController? roomController;
  String? Function(BuildContext, String?)? roomControllerValidator;
  String? _roomControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for detail widget.
  FocusNode? detailFocusNode;
  TextEditingController? detailController;
  String? Function(BuildContext, String?)? detailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    yearsControllerValidator = _yearsControllerValidator;
    termControllerValidator = _termControllerValidator;
    roomControllerValidator = _roomControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    yearsFocusNode?.dispose();
    yearsController?.dispose();

    termFocusNode?.dispose();
    termController?.dispose();

    roomFocusNode?.dispose();
    roomController?.dispose();

    detailFocusNode?.dispose();
    detailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
