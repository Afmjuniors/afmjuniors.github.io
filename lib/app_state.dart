import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/api_requests/api_manager.dart';
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

  int _actualPage = 1;
  int get actualPage => _actualPage;
  set actualPage(int value) {
    _actualPage = value;
  }

  PaginacaoStruct _cnpjs = PaginacaoStruct.fromSerializableMap(jsonDecode(
      '{\"actualPage\":\"1\",\"startIndex\":\"0\",\"pageSize\":\"10\",\"rowsCount\":\"1\",\"totalPages\":\"1\",\"entities\":\"[]\"}'));
  PaginacaoStruct get cnpjs => _cnpjs;
  set cnpjs(PaginacaoStruct value) {
    _cnpjs = value;
  }

  void updateCnpjsStruct(Function(PaginacaoStruct) updateFn) {
    updateFn(_cnpjs);
  }

  int _lastPage = 1;
  int get lastPage => _lastPage;
  set lastPage(int value) {
    _lastPage = value;
  }
}
