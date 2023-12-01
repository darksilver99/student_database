// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:student_database/auth/firebase_auth/auth_util.dart';

Future<dynamic> getListYearAndTerm() async {
  // Add your function code here!
  List<String> yearsList = [];
  List<String> termsList = [];
  var rs = await FirebaseFirestore.instance
      .collection('class_room_list')
      .where('create_by', isEqualTo: currentUserReference)
      .get();
  for (var i = 0; i < rs.size; i++) {
    //year
    if (!yearsList.contains(rs.docs[i].data()["years"].toString())) {
      yearsList.add(rs.docs[i].data()["years"].toString());
    }
    //term
    if (!termsList.contains(rs.docs[i].data()["term"].toString())) {
      termsList.add(rs.docs[i].data()["term"].toString());
    }
  }
  print("yearsList");
  print(yearsList);
  print("termsList");
  print(termsList);
  return {
    "years": yearsList,
    "term": termsList,
  };
}
