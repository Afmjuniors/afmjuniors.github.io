// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MunicipioSelecionadoStruct extends BaseStruct {
  MunicipioSelecionadoStruct({
    String? estado,
    String? municipio,
    int? idMunicipio,
  })  : _estado = estado,
        _municipio = municipio,
        _idMunicipio = idMunicipio;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;

  bool hasEstado() => _estado != null;

  // "municipio" field.
  String? _municipio;
  String get municipio => _municipio ?? '';
  set municipio(String? val) => _municipio = val;

  bool hasMunicipio() => _municipio != null;

  // "idMunicipio" field.
  int? _idMunicipio;
  int get idMunicipio => _idMunicipio ?? 0;
  set idMunicipio(int? val) => _idMunicipio = val;

  void incrementIdMunicipio(int amount) => idMunicipio = idMunicipio + amount;

  bool hasIdMunicipio() => _idMunicipio != null;

  static MunicipioSelecionadoStruct fromMap(Map<String, dynamic> data) =>
      MunicipioSelecionadoStruct(
        estado: data['estado'] as String?,
        municipio: data['municipio'] as String?,
        idMunicipio: castToType<int>(data['idMunicipio']),
      );

  static MunicipioSelecionadoStruct? maybeFromMap(dynamic data) => data is Map
      ? MunicipioSelecionadoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'estado': _estado,
        'municipio': _municipio,
        'idMunicipio': _idMunicipio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'municipio': serializeParam(
          _municipio,
          ParamType.String,
        ),
        'idMunicipio': serializeParam(
          _idMunicipio,
          ParamType.int,
        ),
      }.withoutNulls;

  static MunicipioSelecionadoStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MunicipioSelecionadoStruct(
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        municipio: deserializeParam(
          data['municipio'],
          ParamType.String,
          false,
        ),
        idMunicipio: deserializeParam(
          data['idMunicipio'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MunicipioSelecionadoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MunicipioSelecionadoStruct &&
        estado == other.estado &&
        municipio == other.municipio &&
        idMunicipio == other.idMunicipio;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([estado, municipio, idMunicipio]);
}

MunicipioSelecionadoStruct createMunicipioSelecionadoStruct({
  String? estado,
  String? municipio,
  int? idMunicipio,
}) =>
    MunicipioSelecionadoStruct(
      estado: estado,
      municipio: municipio,
      idMunicipio: idMunicipio,
    );
