// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CnpjdtoStruct extends BaseStruct {
  CnpjdtoStruct({
    String? cnpj,
    String? razaoSocial,
    String? cnpjRaiz,
  })  : _cnpj = cnpj,
        _razaoSocial = razaoSocial,
        _cnpjRaiz = cnpjRaiz;

  // "cnpj" field.
  String? _cnpj;
  String get cnpj => _cnpj ?? '';
  set cnpj(String? val) => _cnpj = val;

  bool hasCnpj() => _cnpj != null;

  // "razaoSocial" field.
  String? _razaoSocial;
  String get razaoSocial => _razaoSocial ?? '';
  set razaoSocial(String? val) => _razaoSocial = val;

  bool hasRazaoSocial() => _razaoSocial != null;

  // "cnpjRaiz" field.
  String? _cnpjRaiz;
  String get cnpjRaiz => _cnpjRaiz ?? '';
  set cnpjRaiz(String? val) => _cnpjRaiz = val;

  bool hasCnpjRaiz() => _cnpjRaiz != null;

  static CnpjdtoStruct fromMap(Map<String, dynamic> data) => CnpjdtoStruct(
        cnpj: data['cnpj'] as String?,
        razaoSocial: data['razaoSocial'] as String?,
        cnpjRaiz: data['cnpjRaiz'] as String?,
      );

  static CnpjdtoStruct? maybeFromMap(dynamic data) =>
      data is Map ? CnpjdtoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cnpj': _cnpj,
        'razaoSocial': _razaoSocial,
        'cnpjRaiz': _cnpjRaiz,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cnpj': serializeParam(
          _cnpj,
          ParamType.String,
        ),
        'razaoSocial': serializeParam(
          _razaoSocial,
          ParamType.String,
        ),
        'cnpjRaiz': serializeParam(
          _cnpjRaiz,
          ParamType.String,
        ),
      }.withoutNulls;

  static CnpjdtoStruct fromSerializableMap(Map<String, dynamic> data) =>
      CnpjdtoStruct(
        cnpj: deserializeParam(
          data['cnpj'],
          ParamType.String,
          false,
        ),
        razaoSocial: deserializeParam(
          data['razaoSocial'],
          ParamType.String,
          false,
        ),
        cnpjRaiz: deserializeParam(
          data['cnpjRaiz'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CnpjdtoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CnpjdtoStruct &&
        cnpj == other.cnpj &&
        razaoSocial == other.razaoSocial &&
        cnpjRaiz == other.cnpjRaiz;
  }

  @override
  int get hashCode => const ListEquality().hash([cnpj, razaoSocial, cnpjRaiz]);
}

CnpjdtoStruct createCnpjdtoStruct({
  String? cnpj,
  String? razaoSocial,
  String? cnpjRaiz,
}) =>
    CnpjdtoStruct(
      cnpj: cnpj,
      razaoSocial: razaoSocial,
      cnpjRaiz: cnpjRaiz,
    );
