// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpressionStruct extends BaseStruct {
  ExpressionStruct({
    int? expressionId,
    String? key,
    List<ExpressionsLanguagesStruct>? expressionsLanguages,
  })  : _expressionId = expressionId,
        _key = key,
        _expressionsLanguages = expressionsLanguages;

  // "expressionId" field.
  int? _expressionId;
  int get expressionId => _expressionId ?? 0;
  set expressionId(int? val) => _expressionId = val;

  void incrementExpressionId(int amount) =>
      expressionId = expressionId + amount;

  bool hasExpressionId() => _expressionId != null;

  // "key" field.
  String? _key;
  String get key => _key ?? '';
  set key(String? val) => _key = val;

  bool hasKey() => _key != null;

  // "expressionsLanguages" field.
  List<ExpressionsLanguagesStruct>? _expressionsLanguages;
  List<ExpressionsLanguagesStruct> get expressionsLanguages =>
      _expressionsLanguages ?? const [];
  set expressionsLanguages(List<ExpressionsLanguagesStruct>? val) =>
      _expressionsLanguages = val;

  void updateExpressionsLanguages(
      Function(List<ExpressionsLanguagesStruct>) updateFn) {
    updateFn(_expressionsLanguages ??= []);
  }

  bool hasExpressionsLanguages() => _expressionsLanguages != null;

  static ExpressionStruct fromMap(Map<String, dynamic> data) =>
      ExpressionStruct(
        expressionId: castToType<int>(data['expressionId']),
        key: data['key'] as String?,
        expressionsLanguages: getStructList(
          data['expressionsLanguages'],
          ExpressionsLanguagesStruct.fromMap,
        ),
      );

  static ExpressionStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpressionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'expressionId': _expressionId,
        'key': _key,
        'expressionsLanguages':
            _expressionsLanguages?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expressionId': serializeParam(
          _expressionId,
          ParamType.int,
        ),
        'key': serializeParam(
          _key,
          ParamType.String,
        ),
        'expressionsLanguages': serializeParam(
          _expressionsLanguages,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ExpressionStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExpressionStruct(
        expressionId: deserializeParam(
          data['expressionId'],
          ParamType.int,
          false,
        ),
        key: deserializeParam(
          data['key'],
          ParamType.String,
          false,
        ),
        expressionsLanguages:
            deserializeStructParam<ExpressionsLanguagesStruct>(
          data['expressionsLanguages'],
          ParamType.DataStruct,
          true,
          structBuilder: ExpressionsLanguagesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ExpressionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ExpressionStruct &&
        expressionId == other.expressionId &&
        key == other.key &&
        listEquality.equals(expressionsLanguages, other.expressionsLanguages);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([expressionId, key, expressionsLanguages]);
}

ExpressionStruct createExpressionStruct({
  int? expressionId,
  String? key,
}) =>
    ExpressionStruct(
      expressionId: expressionId,
      key: key,
    );
