// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpressionsLanguagesStruct extends BaseStruct {
  ExpressionsLanguagesStruct({
    int? expressionLanguageId,
    int? expressionId,
    int? languageId,
    String? text,
    String? code,
  })  : _expressionLanguageId = expressionLanguageId,
        _expressionId = expressionId,
        _languageId = languageId,
        _text = text,
        _code = code;

  // "expressionLanguageId" field.
  int? _expressionLanguageId;
  int get expressionLanguageId => _expressionLanguageId ?? 0;
  set expressionLanguageId(int? val) => _expressionLanguageId = val;

  void incrementExpressionLanguageId(int amount) =>
      expressionLanguageId = expressionLanguageId + amount;

  bool hasExpressionLanguageId() => _expressionLanguageId != null;

  // "expressionId" field.
  int? _expressionId;
  int get expressionId => _expressionId ?? 0;
  set expressionId(int? val) => _expressionId = val;

  void incrementExpressionId(int amount) =>
      expressionId = expressionId + amount;

  bool hasExpressionId() => _expressionId != null;

  // "languageId" field.
  int? _languageId;
  int get languageId => _languageId ?? 0;
  set languageId(int? val) => _languageId = val;

  void incrementLanguageId(int amount) => languageId = languageId + amount;

  bool hasLanguageId() => _languageId != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  static ExpressionsLanguagesStruct fromMap(Map<String, dynamic> data) =>
      ExpressionsLanguagesStruct(
        expressionLanguageId: castToType<int>(data['expressionLanguageId']),
        expressionId: castToType<int>(data['expressionId']),
        languageId: castToType<int>(data['languageId']),
        text: data['text'] as String?,
        code: data['code'] as String?,
      );

  static ExpressionsLanguagesStruct? maybeFromMap(dynamic data) => data is Map
      ? ExpressionsLanguagesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'expressionLanguageId': _expressionLanguageId,
        'expressionId': _expressionId,
        'languageId': _languageId,
        'text': _text,
        'code': _code,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'expressionLanguageId': serializeParam(
          _expressionLanguageId,
          ParamType.int,
        ),
        'expressionId': serializeParam(
          _expressionId,
          ParamType.int,
        ),
        'languageId': serializeParam(
          _languageId,
          ParamType.int,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
      }.withoutNulls;

  static ExpressionsLanguagesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ExpressionsLanguagesStruct(
        expressionLanguageId: deserializeParam(
          data['expressionLanguageId'],
          ParamType.int,
          false,
        ),
        expressionId: deserializeParam(
          data['expressionId'],
          ParamType.int,
          false,
        ),
        languageId: deserializeParam(
          data['languageId'],
          ParamType.int,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ExpressionsLanguagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExpressionsLanguagesStruct &&
        expressionLanguageId == other.expressionLanguageId &&
        expressionId == other.expressionId &&
        languageId == other.languageId &&
        text == other.text &&
        code == other.code;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([expressionLanguageId, expressionId, languageId, text, code]);
}

ExpressionsLanguagesStruct createExpressionsLanguagesStruct({
  int? expressionLanguageId,
  int? expressionId,
  int? languageId,
  String? text,
  String? code,
}) =>
    ExpressionsLanguagesStruct(
      expressionLanguageId: expressionLanguageId,
      expressionId: expressionId,
      languageId: languageId,
      text: text,
      code: code,
    );
