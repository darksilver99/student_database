import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  set testDataList(List<String> _value) {
    _testDataList = _value;
  }

  void addToTestDataList(String _value) {
    _testDataList.add(_value);
  }

  void removeFromTestDataList(String _value) {
    _testDataList.remove(_value);
  }

  void removeAtIndexFromTestDataList(int _index) {
    _testDataList.removeAt(_index);
  }

  void updateTestDataListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _testDataList[_index] = updateFn(_testDataList[_index]);
  }

  void insertAtIndexInTestDataList(int _index, String _value) {
    _testDataList.insert(_index, _value);
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
