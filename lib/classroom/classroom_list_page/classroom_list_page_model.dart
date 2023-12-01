import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/no_data_view_widget.dart';
import '/components/total_student_view_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'classroom_list_page_widget.dart' show ClassroomListPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClassroomListPageModel extends FlutterFlowModel<ClassroomListPageWidget> {
  ///  Local state fields for this page.

  List<String> yearsList = [];
  void addToYearsList(String item) => yearsList.add(item);
  void removeFromYearsList(String item) => yearsList.remove(item);
  void removeAtIndexFromYearsList(int index) => yearsList.removeAt(index);
  void insertAtIndexInYearsList(int index, String item) =>
      yearsList.insert(index, item);
  void updateYearsListAtIndex(int index, Function(String) updateFn) =>
      yearsList[index] = updateFn(yearsList[index]);

  List<String> termList = [];
  void addToTermList(String item) => termList.add(item);
  void removeFromTermList(String item) => termList.remove(item);
  void removeAtIndexFromTermList(int index) => termList.removeAt(index);
  void insertAtIndexInTermList(int index, String item) =>
      termList.insert(index, item);
  void updateTermListAtIndex(int index, Function(String) updateFn) =>
      termList[index] = updateFn(termList[index]);

  int? yearSelected;

  int? termSelected;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - getListYearAndTerm] action in ClassroomListPage widget.
  dynamic? rs;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // Stores action output result for [Custom Action - getListTerm] action in DropDown widget.
  dynamic? rs2;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
