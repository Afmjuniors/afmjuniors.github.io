// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MunicipiosStruct extends BaseStruct {
  MunicipiosStruct({
    int? idMunicipio,
    int? codigo,
    int? idEstado,
    String? nome,
  })  : _idMunicipio = idMunicipio,
        _codigo = codigo,
        _idEstado = idEstado,
        _nome = nome;

  // "idMunicipio" field.
  int? _idMunicipio;
  int get idMunicipio => _idMunicipio ?? 0;
  set idMunicipio(int? val) => _idMunicipio = val;

  void incrementIdMunicipio(int amount) => idMunicipio = idMunicipio + amount;

  bool hasIdMunicipio() => _idMunicipio != null;

  // "codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  set codigo(int? val) => _codigo = val;

  void incrementCodigo(int amount) => codigo = codigo + amount;

  bool hasCodigo() => _codigo != null;

  // "idEstado" field.
  int? _idEstado;
  int get idEstado => _idEstado ?? 0;
  set idEstado(int? val) => _idEstado = val;

  void incrementIdEstado(int amount) => idEstado = idEstado + amount;

  bool hasIdEstado() => _idEstado != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  static MunicipiosStruct fromMap(Map<String, dynamic> data) =>
      MunicipiosStruct(
        idMunicipio: castToType<int>(data['idMunicipio']),
        codigo: castToType<int>(data['codigo']),
        idEstado: castToType<int>(data['idEstado']),
        nome: data['nome'] as String?,
      );

  static MunicipiosStruct? maybeFromMap(dynamic data) => data is Map
      ? MunicipiosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'idMunicipio': _idMunicipio,
        'codigo': _codigo,
        'idEstado': _idEstado,
        'nome': _nome,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idMunicipio': serializeParam(
          _idMunicipio,
          ParamType.int,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.int,
        ),
        'idEstado': serializeParam(
          _idEstado,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
      }.withoutNulls;

  static MunicipiosStruct fromSerializableMap(Map<String, dynamic> data) =>
      MunicipiosStruct(
        idMunicipio: deserializeParam(
          data['idMunicipio'],
          ParamType.int,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.int,
          false,
        ),
        idEstado: deserializeParam(
          data['idEstado'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MunicipiosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MunicipiosStruct &&
        idMunicipio == other.idMunicipio &&
        codigo == other.codigo &&
        idEstado == other.idEstado &&
        nome == other.nome;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idMunicipio, codigo, idEstado, nome]);
}

MunicipiosStruct createMunicipiosStruct({
  int? idMunicipio,
  int? codigo,
  int? idEstado,
  String? nome,
}) =>
    MunicipiosStruct(
      idMunicipio: idMunicipio,
      codigo: codigo,
      idEstado: idEstado,
      nome: nome,
    );
