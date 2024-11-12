// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PermissionsStruct extends BaseStruct {
  PermissionsStruct({
    int? permissionId,
    String? tag,
    String? description,
    int? typePermission,
    int? expressionId,
    ExpressionStruct? expression,
  })  : _permissionId = permissionId,
        _tag = tag,
        _description = description,
        _typePermission = typePermission,
        _expressionId = expressionId,
        _expression = expression;

  // "permissionId" field.
  int? _permissionId;
  int get permissionId => _permissionId ?? 0;
  set permissionId(int? val) => _permissionId = val;

  void incrementPermissionId(int amount) =>
      permissionId = permissionId + amount;

  bool hasPermissionId() => _permissionId != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;

  bool hasTag() => _tag != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "typePermission" field.
  int? _typePermission;
  int get typePermission => _typePermission ?? 0;
  set typePermission(int? val) => _typePermission = val;

  void incrementTypePermission(int amount) =>
      typePermission = typePermission + amount;

  bool hasTypePermission() => _typePermission != null;

  // "expressionId" field.
  int? _expressionId;
  int get expressionId => _expressionId ?? 0;
  set expressionId(int? val) => _expressionId = val;

  void incrementExpressionId(int amount) =>
      expressionId = expressionId + amount;

  bool hasExpressionId() => _expressionId != null;

  // "expression" field.
  ExpressionStruct? _expression;
  ExpressionStruct get expression => _expression ?? ExpressionStruct();
  set expression(ExpressionStruct? val) => _expression = val;

  void updateExpression(Function(ExpressionStruct) updateFn) {
    updateFn(_expression ??= ExpressionStruct());
  }

  bool hasExpression() => _expression != null;

  static PermissionsStruct fromMap(Map<String, dynamic> data) =>
      PermissionsStruct(
        permissionId: castToType<int>(data['permissionId']),
        tag: data['tag'] as String?,
        description: data['description'] as String?,
        typePermission: castToType<int>(data['typePermission']),
        expressionId: castToType<int>(data['expressionId']),
        expression: ExpressionStruct.maybeFromMap(data['expression']),
      );

  static PermissionsStruct? maybeFromMap(dynamic data) => data is Map
      ? PermissionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'permissionId': _permissionId,
        'tag': _tag,
        'description': _description,
        'typePermission': _typePermission,
        'expressionId': _expressionId,
        'expression': _expression?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'permissionId': serializeParam(
          _permissionId,
          ParamType.int,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'typePermission': serializeParam(
          _typePermission,
          ParamType.int,
        ),
        'expressionId': serializeParam(
          _expressionId,
          ParamType.int,
        ),
        'expression': serializeParam(
          _expression,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static PermissionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      PermissionsStruct(
        permissionId: deserializeParam(
          data['permissionId'],
          ParamType.int,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        typePermission: deserializeParam(
          data['typePermission'],
          ParamType.int,
          false,
        ),
        expressionId: deserializeParam(
          data['expressionId'],
          ParamType.int,
          false,
        ),
        expression: deserializeStructParam(
          data['expression'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpressionStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PermissionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PermissionsStruct &&
        permissionId == other.permissionId &&
        tag == other.tag &&
        description == other.description &&
        typePermission == other.typePermission &&
        expressionId == other.expressionId &&
        expression == other.expression;
  }

  @override
  int get hashCode => const ListEquality().hash([
        permissionId,
        tag,
        description,
        typePermission,
        expressionId,
        expression
      ]);
}

PermissionsStruct createPermissionsStruct({
  int? permissionId,
  String? tag,
  String? description,
  int? typePermission,
  int? expressionId,
  ExpressionStruct? expression,
}) =>
    PermissionsStruct(
      permissionId: permissionId,
      tag: tag,
      description: description,
      typePermission: typePermission,
      expressionId: expressionId,
      expression: expression ?? ExpressionStruct(),
    );
