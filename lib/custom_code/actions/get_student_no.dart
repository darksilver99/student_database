// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> getStudentNo(DocumentReference? roomRef) async {
  // Add your function code here!
  var rs = await FirebaseFirestore.instance
      .collection('student_list')
      .where('room_ref', isEqualTo: roomRef)
      .orderBy('no', descending: false)
      .get();
  if (rs.size == 0) {
    return 1;
  }
  for (var i = 0; i < rs.size; i++) {
    if (rs.docs[i].data()["no"] != (i + 1)) {
      return (i + 1);
    }
  }
  return (rs.size + 1);
}
