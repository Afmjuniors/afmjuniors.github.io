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

Future<List<MunicipioSelecionadoStruct>> newCustomAction(
  List<int> idMunicipio,
  String estado,
  List<MunicipiosStruct>? resultadoAPis,
) async {
  List<MunicipioSelecionadoStruct> selectedMunicipios = [];

  if (resultadoAPis != null) {
    for (int id in idMunicipio) {
      // Use a nullable type for municipio
      MunicipiosStruct? municipio = resultadoAPis.firstWhere(
        (m) => m.idMunicipio == id,
        orElse: () => MunicipiosStruct(
            idMunicipio: -1, nome: ''), // Return a default object if not found
      );

      // Only add if municipio was found
      if (municipio.idMunicipio != -1) {
        selectedMunicipios.add(
          MunicipioSelecionadoStruct(
            idMunicipio: municipio.idMunicipio,
            municipio: municipio.nome,
            estado: estado,
          ),
        );
      }
    }
  }

  return selectedMunicipios;
}
