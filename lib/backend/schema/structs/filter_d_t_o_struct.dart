// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FilterDTOStruct extends BaseStruct {
  FilterDTOStruct({
    List<String>? uf,
    List<int>? municipios,
    bool? incluirSecundaria,
    bool? somenteMei,
    bool? somenteMatriz,
    bool? somenteFilial,
    bool? excluirMei,
    bool? contatoTelefone,
    bool? contatoEmail,
    bool? somenteFixo,
    bool? somenteCelular,
    String? termo,
    List<String>? atividadePrincipal,
    String? naturezaJuridica,
    String? cep,
    String? ddd,
    String? bairro,
    int? capitalInicial,
    int? capitalFinal,
    String? dataAberturaEnd,
    String? dataAberturaStart,
    int? situacao,
  })  : _uf = uf,
        _municipios = municipios,
        _incluirSecundaria = incluirSecundaria,
        _somenteMei = somenteMei,
        _somenteMatriz = somenteMatriz,
        _somenteFilial = somenteFilial,
        _excluirMei = excluirMei,
        _contatoTelefone = contatoTelefone,
        _contatoEmail = contatoEmail,
        _somenteFixo = somenteFixo,
        _somenteCelular = somenteCelular,
        _termo = termo,
        _atividadePrincipal = atividadePrincipal,
        _naturezaJuridica = naturezaJuridica,
        _cep = cep,
        _ddd = ddd,
        _bairro = bairro,
        _capitalInicial = capitalInicial,
        _capitalFinal = capitalFinal,
        _dataAberturaEnd = dataAberturaEnd,
        _dataAberturaStart = dataAberturaStart,
        _situacao = situacao;

  // "uf" field.
  List<String>? _uf;
  List<String> get uf => _uf ?? const [];
  set uf(List<String>? val) => _uf = val;

  void updateUf(Function(List<String>) updateFn) {
    updateFn(_uf ??= []);
  }

  bool hasUf() => _uf != null;

  // "municipios" field.
  List<int>? _municipios;
  List<int> get municipios => _municipios ?? const [];
  set municipios(List<int>? val) => _municipios = val;

  void updateMunicipios(Function(List<int>) updateFn) {
    updateFn(_municipios ??= []);
  }

  bool hasMunicipios() => _municipios != null;

  // "incluirSecundaria" field.
  bool? _incluirSecundaria;
  bool get incluirSecundaria => _incluirSecundaria ?? false;
  set incluirSecundaria(bool? val) => _incluirSecundaria = val;

  bool hasIncluirSecundaria() => _incluirSecundaria != null;

  // "somenteMei" field.
  bool? _somenteMei;
  bool get somenteMei => _somenteMei ?? false;
  set somenteMei(bool? val) => _somenteMei = val;

  bool hasSomenteMei() => _somenteMei != null;

  // "somenteMatriz" field.
  bool? _somenteMatriz;
  bool get somenteMatriz => _somenteMatriz ?? false;
  set somenteMatriz(bool? val) => _somenteMatriz = val;

  bool hasSomenteMatriz() => _somenteMatriz != null;

  // "somenteFilial" field.
  bool? _somenteFilial;
  bool get somenteFilial => _somenteFilial ?? false;
  set somenteFilial(bool? val) => _somenteFilial = val;

  bool hasSomenteFilial() => _somenteFilial != null;

  // "excluirMei" field.
  bool? _excluirMei;
  bool get excluirMei => _excluirMei ?? false;
  set excluirMei(bool? val) => _excluirMei = val;

  bool hasExcluirMei() => _excluirMei != null;

  // "contatoTelefone" field.
  bool? _contatoTelefone;
  bool get contatoTelefone => _contatoTelefone ?? false;
  set contatoTelefone(bool? val) => _contatoTelefone = val;

  bool hasContatoTelefone() => _contatoTelefone != null;

  // "contatoEmail" field.
  bool? _contatoEmail;
  bool get contatoEmail => _contatoEmail ?? false;
  set contatoEmail(bool? val) => _contatoEmail = val;

  bool hasContatoEmail() => _contatoEmail != null;

  // "somenteFixo" field.
  bool? _somenteFixo;
  bool get somenteFixo => _somenteFixo ?? false;
  set somenteFixo(bool? val) => _somenteFixo = val;

  bool hasSomenteFixo() => _somenteFixo != null;

  // "somenteCelular" field.
  bool? _somenteCelular;
  bool get somenteCelular => _somenteCelular ?? false;
  set somenteCelular(bool? val) => _somenteCelular = val;

  bool hasSomenteCelular() => _somenteCelular != null;

  // "termo" field.
  String? _termo;
  String get termo => _termo ?? '';
  set termo(String? val) => _termo = val;

  bool hasTermo() => _termo != null;

  // "atividadePrincipal" field.
  List<String>? _atividadePrincipal;
  List<String> get atividadePrincipal => _atividadePrincipal ?? const [];
  set atividadePrincipal(List<String>? val) => _atividadePrincipal = val;

  void updateAtividadePrincipal(Function(List<String>) updateFn) {
    updateFn(_atividadePrincipal ??= []);
  }

  bool hasAtividadePrincipal() => _atividadePrincipal != null;

  // "naturezaJuridica" field.
  String? _naturezaJuridica;
  String get naturezaJuridica => _naturezaJuridica ?? '';
  set naturezaJuridica(String? val) => _naturezaJuridica = val;

  bool hasNaturezaJuridica() => _naturezaJuridica != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;

  bool hasCep() => _cep != null;

  // "ddd" field.
  String? _ddd;
  String get ddd => _ddd ?? '';
  set ddd(String? val) => _ddd = val;

  bool hasDdd() => _ddd != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;

  bool hasBairro() => _bairro != null;

  // "capitalInicial" field.
  int? _capitalInicial;
  int get capitalInicial => _capitalInicial ?? 0;
  set capitalInicial(int? val) => _capitalInicial = val;

  void incrementCapitalInicial(int amount) =>
      capitalInicial = capitalInicial + amount;

  bool hasCapitalInicial() => _capitalInicial != null;

  // "capitalFinal" field.
  int? _capitalFinal;
  int get capitalFinal => _capitalFinal ?? 0;
  set capitalFinal(int? val) => _capitalFinal = val;

  void incrementCapitalFinal(int amount) =>
      capitalFinal = capitalFinal + amount;

  bool hasCapitalFinal() => _capitalFinal != null;

  // "dataAberturaEnd" field.
  String? _dataAberturaEnd;
  String get dataAberturaEnd => _dataAberturaEnd ?? '';
  set dataAberturaEnd(String? val) => _dataAberturaEnd = val;

  bool hasDataAberturaEnd() => _dataAberturaEnd != null;

  // "dataAberturaStart" field.
  String? _dataAberturaStart;
  String get dataAberturaStart => _dataAberturaStart ?? '';
  set dataAberturaStart(String? val) => _dataAberturaStart = val;

  bool hasDataAberturaStart() => _dataAberturaStart != null;

  // "situacao" field.
  int? _situacao;
  int get situacao => _situacao ?? 0;
  set situacao(int? val) => _situacao = val;

  void incrementSituacao(int amount) => situacao = situacao + amount;

  bool hasSituacao() => _situacao != null;

  static FilterDTOStruct fromMap(Map<String, dynamic> data) => FilterDTOStruct(
        uf: getDataList(data['uf']),
        municipios: getDataList(data['municipios']),
        incluirSecundaria: data['incluirSecundaria'] as bool?,
        somenteMei: data['somenteMei'] as bool?,
        somenteMatriz: data['somenteMatriz'] as bool?,
        somenteFilial: data['somenteFilial'] as bool?,
        excluirMei: data['excluirMei'] as bool?,
        contatoTelefone: data['contatoTelefone'] as bool?,
        contatoEmail: data['contatoEmail'] as bool?,
        somenteFixo: data['somenteFixo'] as bool?,
        somenteCelular: data['somenteCelular'] as bool?,
        termo: data['termo'] as String?,
        atividadePrincipal: getDataList(data['atividadePrincipal']),
        naturezaJuridica: data['naturezaJuridica'] as String?,
        cep: data['cep'] as String?,
        ddd: data['ddd'] as String?,
        bairro: data['bairro'] as String?,
        capitalInicial: castToType<int>(data['capitalInicial']),
        capitalFinal: castToType<int>(data['capitalFinal']),
        dataAberturaEnd: data['dataAberturaEnd'] as String?,
        dataAberturaStart: data['dataAberturaStart'] as String?,
        situacao: castToType<int>(data['situacao']),
      );

  static FilterDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? FilterDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'uf': _uf,
        'municipios': _municipios,
        'incluirSecundaria': _incluirSecundaria,
        'somenteMei': _somenteMei,
        'somenteMatriz': _somenteMatriz,
        'somenteFilial': _somenteFilial,
        'excluirMei': _excluirMei,
        'contatoTelefone': _contatoTelefone,
        'contatoEmail': _contatoEmail,
        'somenteFixo': _somenteFixo,
        'somenteCelular': _somenteCelular,
        'termo': _termo,
        'atividadePrincipal': _atividadePrincipal,
        'naturezaJuridica': _naturezaJuridica,
        'cep': _cep,
        'ddd': _ddd,
        'bairro': _bairro,
        'capitalInicial': _capitalInicial,
        'capitalFinal': _capitalFinal,
        'dataAberturaEnd': _dataAberturaEnd,
        'dataAberturaStart': _dataAberturaStart,
        'situacao': _situacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uf': serializeParam(
          _uf,
          ParamType.String,
          isList: true,
        ),
        'municipios': serializeParam(
          _municipios,
          ParamType.int,
          isList: true,
        ),
        'incluirSecundaria': serializeParam(
          _incluirSecundaria,
          ParamType.bool,
        ),
        'somenteMei': serializeParam(
          _somenteMei,
          ParamType.bool,
        ),
        'somenteMatriz': serializeParam(
          _somenteMatriz,
          ParamType.bool,
        ),
        'somenteFilial': serializeParam(
          _somenteFilial,
          ParamType.bool,
        ),
        'excluirMei': serializeParam(
          _excluirMei,
          ParamType.bool,
        ),
        'contatoTelefone': serializeParam(
          _contatoTelefone,
          ParamType.bool,
        ),
        'contatoEmail': serializeParam(
          _contatoEmail,
          ParamType.bool,
        ),
        'somenteFixo': serializeParam(
          _somenteFixo,
          ParamType.bool,
        ),
        'somenteCelular': serializeParam(
          _somenteCelular,
          ParamType.bool,
        ),
        'termo': serializeParam(
          _termo,
          ParamType.String,
        ),
        'atividadePrincipal': serializeParam(
          _atividadePrincipal,
          ParamType.String,
          isList: true,
        ),
        'naturezaJuridica': serializeParam(
          _naturezaJuridica,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'ddd': serializeParam(
          _ddd,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'capitalInicial': serializeParam(
          _capitalInicial,
          ParamType.int,
        ),
        'capitalFinal': serializeParam(
          _capitalFinal,
          ParamType.int,
        ),
        'dataAberturaEnd': serializeParam(
          _dataAberturaEnd,
          ParamType.String,
        ),
        'dataAberturaStart': serializeParam(
          _dataAberturaStart,
          ParamType.String,
        ),
        'situacao': serializeParam(
          _situacao,
          ParamType.int,
        ),
      }.withoutNulls;

  static FilterDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      FilterDTOStruct(
        uf: deserializeParam<String>(
          data['uf'],
          ParamType.String,
          true,
        ),
        municipios: deserializeParam<int>(
          data['municipios'],
          ParamType.int,
          true,
        ),
        incluirSecundaria: deserializeParam(
          data['incluirSecundaria'],
          ParamType.bool,
          false,
        ),
        somenteMei: deserializeParam(
          data['somenteMei'],
          ParamType.bool,
          false,
        ),
        somenteMatriz: deserializeParam(
          data['somenteMatriz'],
          ParamType.bool,
          false,
        ),
        somenteFilial: deserializeParam(
          data['somenteFilial'],
          ParamType.bool,
          false,
        ),
        excluirMei: deserializeParam(
          data['excluirMei'],
          ParamType.bool,
          false,
        ),
        contatoTelefone: deserializeParam(
          data['contatoTelefone'],
          ParamType.bool,
          false,
        ),
        contatoEmail: deserializeParam(
          data['contatoEmail'],
          ParamType.bool,
          false,
        ),
        somenteFixo: deserializeParam(
          data['somenteFixo'],
          ParamType.bool,
          false,
        ),
        somenteCelular: deserializeParam(
          data['somenteCelular'],
          ParamType.bool,
          false,
        ),
        termo: deserializeParam(
          data['termo'],
          ParamType.String,
          false,
        ),
        atividadePrincipal: deserializeParam<String>(
          data['atividadePrincipal'],
          ParamType.String,
          true,
        ),
        naturezaJuridica: deserializeParam(
          data['naturezaJuridica'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        ddd: deserializeParam(
          data['ddd'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        capitalInicial: deserializeParam(
          data['capitalInicial'],
          ParamType.int,
          false,
        ),
        capitalFinal: deserializeParam(
          data['capitalFinal'],
          ParamType.int,
          false,
        ),
        dataAberturaEnd: deserializeParam(
          data['dataAberturaEnd'],
          ParamType.String,
          false,
        ),
        dataAberturaStart: deserializeParam(
          data['dataAberturaStart'],
          ParamType.String,
          false,
        ),
        situacao: deserializeParam(
          data['situacao'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FilterDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is FilterDTOStruct &&
        listEquality.equals(uf, other.uf) &&
        listEquality.equals(municipios, other.municipios) &&
        incluirSecundaria == other.incluirSecundaria &&
        somenteMei == other.somenteMei &&
        somenteMatriz == other.somenteMatriz &&
        somenteFilial == other.somenteFilial &&
        excluirMei == other.excluirMei &&
        contatoTelefone == other.contatoTelefone &&
        contatoEmail == other.contatoEmail &&
        somenteFixo == other.somenteFixo &&
        somenteCelular == other.somenteCelular &&
        termo == other.termo &&
        listEquality.equals(atividadePrincipal, other.atividadePrincipal) &&
        naturezaJuridica == other.naturezaJuridica &&
        cep == other.cep &&
        ddd == other.ddd &&
        bairro == other.bairro &&
        capitalInicial == other.capitalInicial &&
        capitalFinal == other.capitalFinal &&
        dataAberturaEnd == other.dataAberturaEnd &&
        dataAberturaStart == other.dataAberturaStart &&
        situacao == other.situacao;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uf,
        municipios,
        incluirSecundaria,
        somenteMei,
        somenteMatriz,
        somenteFilial,
        excluirMei,
        contatoTelefone,
        contatoEmail,
        somenteFixo,
        somenteCelular,
        termo,
        atividadePrincipal,
        naturezaJuridica,
        cep,
        ddd,
        bairro,
        capitalInicial,
        capitalFinal,
        dataAberturaEnd,
        dataAberturaStart,
        situacao
      ]);
}

FilterDTOStruct createFilterDTOStruct({
  bool? incluirSecundaria,
  bool? somenteMei,
  bool? somenteMatriz,
  bool? somenteFilial,
  bool? excluirMei,
  bool? contatoTelefone,
  bool? contatoEmail,
  bool? somenteFixo,
  bool? somenteCelular,
  String? termo,
  String? naturezaJuridica,
  String? cep,
  String? ddd,
  String? bairro,
  int? capitalInicial,
  int? capitalFinal,
  String? dataAberturaEnd,
  String? dataAberturaStart,
  int? situacao,
}) =>
    FilterDTOStruct(
      incluirSecundaria: incluirSecundaria,
      somenteMei: somenteMei,
      somenteMatriz: somenteMatriz,
      somenteFilial: somenteFilial,
      excluirMei: excluirMei,
      contatoTelefone: contatoTelefone,
      contatoEmail: contatoEmail,
      somenteFixo: somenteFixo,
      somenteCelular: somenteCelular,
      termo: termo,
      naturezaJuridica: naturezaJuridica,
      cep: cep,
      ddd: ddd,
      bairro: bairro,
      capitalInicial: capitalInicial,
      capitalFinal: capitalFinal,
      dataAberturaEnd: dataAberturaEnd,
      dataAberturaStart: dataAberturaStart,
      situacao: situacao,
    );
