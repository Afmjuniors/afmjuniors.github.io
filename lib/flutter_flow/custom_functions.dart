import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

List<String>? naturezaParse(List<NaturezaStruct>? naturezas) {
  if (naturezas == null) return [""];

  var naturezaMod = naturezas
      .map((x) => x.idNaturezaJuridica.toString() + " - " + x.descricao)
      .toList();

  return naturezaMod;
}