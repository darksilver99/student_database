import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _testDataList = [];
  List<String> get testDataList => _testDataList;
  set testDataList(List<String> value) {
    _testDataList = value;
  }

  void addToTestDataList(String value) {
    _testDataList.add(value);
  }

  void removeFromTestDataList(String value) {
    _testDataList.remove(value);
  }

  void removeAtIndexFromTestDataList(int index) {
    _testDataList.removeAt(index);
  }

  void updateTestDataListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _testDataList[index] = updateFn(_testDataList[index]);
  }

  void insertAtIndexInTestDataList(int index, String value) {
    _testDataList.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
