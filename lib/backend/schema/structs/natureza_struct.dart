// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NaturezaStruct extends BaseStruct {
  NaturezaStruct({
    int? idNaturezaJuridica,
    String? codigo,
    String? descricao,
  })  : _idNaturezaJuridica = idNaturezaJuridica,
        _codigo = codigo,
        _descricao = descricao;

  // "idNaturezaJuridica" field.
  int? _idNaturezaJuridica;
  int get idNaturezaJuridica => _idNaturezaJuridica ?? 0;
  set idNaturezaJuridica(int? val) => _idNaturezaJuridica = val;

  void incrementIdNaturezaJuridica(int amount) =>
      idNaturezaJuridica = idNaturezaJuridica + amount;

  bool hasIdNaturezaJuridica() => _idNaturezaJuridica != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  static NaturezaStruct fromMap(Map<String, dynamic> data) => NaturezaStruct(
        idNaturezaJuridica: castToType<int>(data['idNaturezaJuridica']),
        codigo: data['codigo'] as String?,
        descricao: data['descricao'] as String?,
      );

  static NaturezaStruct? maybeFromMap(dynamic data) =>
      data is Map ? NaturezaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idNaturezaJuridica': _idNaturezaJuridica,
        'codigo': _codigo,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idNaturezaJuridica': serializeParam(
          _idNaturezaJuridica,
          ParamType.int,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static NaturezaStruct fromSerializableMap(Map<String, dynamic> data) =>
      NaturezaStruct(
        idNaturezaJuridica: deserializeParam(
          data['idNaturezaJuridica'],
          ParamType.int,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NaturezaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NaturezaStruct &&
        idNaturezaJuridica == other.idNaturezaJuridica &&
        codigo == other.codigo &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idNaturezaJuridica, codigo, descricao]);
}

NaturezaStruct createNaturezaStruct({
  int? idNaturezaJuridica,
  String? codigo,
  String? descricao,
}) =>
    NaturezaStruct(
      idNaturezaJuridica: idNaturezaJuridica,
      codigo: codigo,
      descricao: descricao,
    );
