// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadosStruct extends BaseStruct {
  EstadosStruct({
    int? idEstado,
    int? idPais,
    String? nome,
    String? sigla,
  })  : _idEstado = idEstado,
        _idPais = idPais,
        _nome = nome,
        _sigla = sigla;

  // "idEstado" field.
  int? _idEstado;
  int get idEstado => _idEstado ?? 0;
  set idEstado(int? val) => _idEstado = val;

  void incrementIdEstado(int amount) => idEstado = idEstado + amount;

  bool hasIdEstado() => _idEstado != null;

  // "idPais" field.
  int? _idPais;
  int get idPais => _idPais ?? 0;
  set idPais(int? val) => _idPais = val;

  void incrementIdPais(int amount) => idPais = idPais + amount;

  bool hasIdPais() => _idPais != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  set sigla(String? val) => _sigla = val;

  bool hasSigla() => _sigla != null;

  static EstadosStruct fromMap(Map<String, dynamic> data) => EstadosStruct(
        idEstado: castToType<int>(data['idEstado']),
        idPais: castToType<int>(data['idPais']),
        nome: data['nome'] as String?,
        sigla: data['sigla'] as String?,
      );

  static EstadosStruct? maybeFromMap(dynamic data) =>
      data is Map ? EstadosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'idEstado': _idEstado,
        'idPais': _idPais,
        'nome': _nome,
        'sigla': _sigla,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idEstado': serializeParam(
          _idEstado,
          ParamType.int,
        ),
        'idPais': serializeParam(
          _idPais,
          ParamType.int,
        ),
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'sigla': serializeParam(
          _sigla,
          ParamType.String,
        ),
      }.withoutNulls;

  static EstadosStruct fromSerializableMap(Map<String, dynamic> data) =>
      EstadosStruct(
        idEstado: deserializeParam(
          data['idEstado'],
          ParamType.int,
          false,
        ),
        idPais: deserializeParam(
          data['idPais'],
          ParamType.int,
          false,
        ),
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        sigla: deserializeParam(
          data['sigla'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EstadosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EstadosStruct &&
        idEstado == other.idEstado &&
        idPais == other.idPais &&
        nome == other.nome &&
        sigla == other.sigla;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([idEstado, idPais, nome, sigla]);
}

EstadosStruct createEstadosStruct({
  int? idEstado,
  int? idPais,
  String? nome,
  String? sigla,
}) =>
    EstadosStruct(
      idEstado: idEstado,
      idPais: idPais,
      nome: nome,
      sigla: sigla,
    );
