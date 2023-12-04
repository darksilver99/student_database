// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:excel/excel.dart';
import 'package:excel/excel.dart' as exBorder;
import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path_provider/path_provider.dart';

Future<String> getExcelFile(
  BuildContext context,
  DocumentReference? roomRef,
) async {
  // Add your function code here!
  bool isGranted = false;
  if (Platform.isAndroid) {
    final deviceInfo = DeviceInfoPlugin();
    final info = await deviceInfo.androidInfo;
    if (int.parse(info.version.release) >= 13) {
      isGranted = true;
    } else {
      var status = await Permission.storage.request();
      if (status.isGranted) {
        isGranted = true;
      }
    }
  } else {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      isGranted = true;
    }
  }

  if (!isGranted) {
    return '';
  }

  //getData
  var rs = await FirebaseFirestore.instance
      .collection('student_list')
      .where('room_ref', isEqualTo: roomRef)
      .get();
  var excel = Excel.createExcel();
  Sheet sheetObject = excel['Sheet1'];
  CellStyle cellStyle = CellStyle(
    backgroundColorHex: '#1AFF1A',
    horizontalAlign: HorizontalAlign.Center,
    bold: true,
    leftBorder: exBorder.Border(borderStyle: exBorder.BorderStyle.Thin),
    rightBorder: exBorder.Border(borderStyle: exBorder.BorderStyle.Thin),
    topBorder: exBorder.Border(borderStyle: exBorder.BorderStyle.Thin),
    bottomBorder: exBorder.Border(borderStyle: exBorder.BorderStyle.Thin),
  );

  // Add headers
  List<String> header = ["เลขที่", "ชื่อ-สกุล"];
  for (var i = 0; i < header.length; i++) {
    var cell = sheetObject
        .cell(CellIndex.indexByColumnRow(columnIndex: i, rowIndex: 0));
    cell.value = TextCellValue(header[i]);
    cell.cellStyle = cellStyle;
  }

  // Add body
  for (int i = 0; i < rs.size; i++) {
    for (int j = 0; j < header.length; j++) {
      var cell = sheetObject
          .cell(CellIndex.indexByColumnRow(columnIndex: j, rowIndex: i + 1));
      //cell.cellStyle = CellStyle(horizontalAlign: HorizontalAlign.Center);
      if (j == 0) {
        cell.value = TextCellValue(rs.docs[i]["no"].toString());
      } else {
        cell.value = TextCellValue(rs.docs[i]["first_name"].toString());
      }
    }
  }

  Directory dir = await getApplicationDocumentsDirectory();
  //Directory dir = Directory('/storage/emulated/0/Download');
  List<int>? fileBytes = excel.save();
  var path = File('${dir.path}/test.xlsx')
    ..createSync(recursive: true)
    ..writeAsBytesSync(fileBytes!);

  print(path);

  return path.path;
}
