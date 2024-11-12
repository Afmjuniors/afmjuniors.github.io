import 'package:collection/collection.dart';

enum Situacao {
  ATIVA,
  BAIXADA,
  SUSPENSA,
  INAPTA,
  NULA,
}

enum Estados {
  AC,
  AL,
  AP,
  AM,
  BA,
  CE,
  DF,
  ES,
  GO,
  MA,
  MT,
  MS,
  MG,
  PA,
  PB,
  PR,
  PE,
  PI,
  RJ,
  RN,
  RS,
  RO,
  RR,
  SC,
  SP,
  SE,
  TO,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Situacao):
      return Situacao.values.deserialize(value) as T?;
    case (Estados):
      return Estados.values.deserialize(value) as T?;
    default:
      return null;
  }
}
