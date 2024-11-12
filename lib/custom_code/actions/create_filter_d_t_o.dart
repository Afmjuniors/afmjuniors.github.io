// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<SearchDTOStruct?> createFilterDTO(
    String? keywords,
    List<String>? atividadePrincipal,
    String? naturezaJuridica,
    List<int>? municipios,
    String? situacao,
    String? cep,
    String? ddd,
    String? bairro,
    bool? incluirSecundaria,
    bool? somenteMei,
    bool? excluirMei,
    bool? somenteMatriz,
    bool? somenteFilial,
    bool? contatoTelefone,
    bool? contatoEmail,
    bool? somenteFixo,
    bool? somenteCelular,
    String? aberturaStart,
    String? aberturaEnd,
    int? socialInicial,
    int? socialFinal,
    int actualPage) async {
  //   // Create a new FilterDTOStruct object with the provided parameters
  situacao = situacao == null ? "" : situacao;

  Map<String, int> situacaoMap = {
    "NULA": 1,
    "ATIVA": 2,
    "SUSPENSA": 3,
    "INAPTA": 4,
    "BAIXADA": 8
  };

  int intSituacao = situacaoMap[situacao.toUpperCase()] ?? 0;

  // Create a new FilterDTOStruct object with the provided parameters
  FilterDTOStruct filterDTO = FilterDTOStruct(
      termo: keywords,
      atividadePrincipal: atividadePrincipal,
      naturezaJuridica: naturezaJuridica,
      municipios: municipios,
      situacao: intSituacao,
      cep: cep,
      ddd: ddd,
      bairro: bairro,
      incluirSecundaria: incluirSecundaria,
      somenteMei: somenteMei,
      excluirMei: excluirMei,
      somenteMatriz: somenteMatriz,
      somenteFilial: somenteFilial,
      contatoTelefone: contatoTelefone,
      contatoEmail: contatoEmail,
      somenteFixo: somenteFixo,
      somenteCelular: somenteCelular,
      dataAberturaEnd: aberturaEnd,
      dataAberturaStart: aberturaStart,
      capitalInicial: socialInicial,
      capitalFinal: socialFinal);
  SearchDTOStruct searchDTO =
      SearchDTOStruct(actualPage: actualPage, filter: filterDTO);

  return searchDTO;
}
