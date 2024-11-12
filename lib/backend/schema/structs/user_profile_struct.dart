// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserProfileStruct extends BaseStruct {
  UserProfileStruct({
    int? userProfileId,
    String? description,
    int? expressionId,
    bool? allowDelete,
    bool? allowEdit,
    ExpressionStruct? expression,
    List<ExpressionsLanguagesStruct>? expressionsLanguages,
    List<PermissionsStruct>? permissions,
  })  : _userProfileId = userProfileId,
        _description = description,
        _expressionId = expressionId,
        _allowDelete = allowDelete,
        _allowEdit = allowEdit,
        _expression = expression,
        _expressionsLanguages = expressionsLanguages,
        _permissions = permissions;

  // "userProfileId" field.
  int? _userProfileId;
  int get userProfileId => _userProfileId ?? 0;
  set userProfileId(int? val) => _userProfileId = val;

  void incrementUserProfileId(int amount) =>
      userProfileId = userProfileId + amount;

  bool hasUserProfileId() => _userProfileId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "expressionId" field.
  int? _expressionId;
  int get expressionId => _expressionId ?? 0;
  set expressionId(int? val) => _expressionId = val;

  void incrementExpressionId(int amount) =>
      expressionId = expressionId + amount;

  bool hasExpressionId() => _expressionId != null;

  // "allowDelete" field.
  bool? _allowDelete;
  bool get allowDelete => _allowDelete ?? false;
  set allowDelete(bool? val) => _allowDelete = val;

  bool hasAllowDelete() => _allowDelete != null;

  // "allowEdit" field.
  bool? _allowEdit;
  bool get allowEdit => _allowEdit ?? false;
  set allowEdit(bool? val) => _allowEdit = val;

  bool hasAllowEdit() => _allowEdit != null;

  // "expression" field.
  ExpressionStruct? _expression;
  ExpressionStruct get expression => _expression ?? ExpressionStruct();
  set expression(ExpressionStruct? val) => _expression = val;

  void updateExpression(Function(ExpressionStruct) updateFn) {
    updateFn(_expression ??= ExpressionStruct());
  }

  bool hasExpression() => _expression != null;

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

  // "permissions" field.
  List<PermissionsStruct>? _permissions;
  List<PermissionsStruct> get permissions => _permissions ?? const [];
  set permissions(List<PermissionsStruct>? val) => _permissions = val;

  void updatePermissions(Function(List<PermissionsStruct>) updateFn) {
    updateFn(_permissions ??= []);
  }

  bool hasPermissions() => _permissions != null;

  static UserProfileStruct fromMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        userProfileId: castToType<int>(data['userProfileId']),
        description: data['description'] as String?,
        expressionId: castToType<int>(data['expressionId']),
        allowDelete: data['allowDelete'] as bool?,
        allowEdit: data['allowEdit'] as bool?,
        expression: ExpressionStruct.maybeFromMap(data['expression']),
        expressionsLanguages: getStructList(
          data['expressionsLanguages'],
          ExpressionsLanguagesStruct.fromMap,
        ),
        permissions: getStructList(
          data['permissions'],
          PermissionsStruct.fromMap,
        ),
      );

  static UserProfileStruct? maybeFromMap(dynamic data) => data is Map
      ? UserProfileStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userProfileId': _userProfileId,
        'description': _description,
        'expressionId': _expressionId,
        'allowDelete': _allowDelete,
        'allowEdit': _allowEdit,
        'expression': _expression?.toMap(),
        'expressionsLanguages':
            _expressionsLanguages?.map((e) => e.toMap()).toList(),
        'permissions': _permissions?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userProfileId': serializeParam(
          _userProfileId,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'expressionId': serializeParam(
          _expressionId,
          ParamType.int,
        ),
        'allowDelete': serializeParam(
          _allowDelete,
          ParamType.bool,
        ),
        'allowEdit': serializeParam(
          _allowEdit,
          ParamType.bool,
        ),
        'expression': serializeParam(
          _expression,
          ParamType.DataStruct,
        ),
        'expressionsLanguages': serializeParam(
          _expressionsLanguages,
          ParamType.DataStruct,
          isList: true,
        ),
        'permissions': serializeParam(
          _permissions,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UserProfileStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserProfileStruct(
        userProfileId: deserializeParam(
          data['userProfileId'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        expressionId: deserializeParam(
          data['expressionId'],
          ParamType.int,
          false,
        ),
        allowDelete: deserializeParam(
          data['allowDelete'],
          ParamType.bool,
          false,
        ),
        allowEdit: deserializeParam(
          data['allowEdit'],
          ParamType.bool,
          false,
        ),
        expression: deserializeStructParam(
          data['expression'],
          ParamType.DataStruct,
          false,
          structBuilder: ExpressionStruct.fromSerializableMap,
        ),
        expressionsLanguages:
            deserializeStructParam<ExpressionsLanguagesStruct>(
          data['expressionsLanguages'],
          ParamType.DataStruct,
          true,
          structBuilder: ExpressionsLanguagesStruct.fromSerializableMap,
        ),
        permissions: deserializeStructParam<PermissionsStruct>(
          data['permissions'],
          ParamType.DataStruct,
          true,
          structBuilder: PermissionsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserProfileStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserProfileStruct &&
        userProfileId == other.userProfileId &&
        description == other.description &&
        expressionId == other.expressionId &&
        allowDelete == other.allowDelete &&
        allowEdit == other.allowEdit &&
        expression == other.expression &&
        listEquality.equals(expressionsLanguages, other.expressionsLanguages) &&
        listEquality.equals(permissions, other.permissions);
  }

  @override
  int get hashCode => const ListEquality().hash([
        userProfileId,
        description,
        expressionId,
        allowDelete,
        allowEdit,
        expression,
        expressionsLanguages,
        permissions
      ]);
}

UserProfileStruct createUserProfileStruct({
  int? userProfileId,
  String? description,
  int? expressionId,
  bool? allowDelete,
  bool? allowEdit,
  ExpressionStruct? expression,
}) =>
    UserProfileStruct(
      userProfileId: userProfileId,
      description: description,
      expressionId: expressionId,
      allowDelete: allowDelete,
      allowEdit: allowEdit,
      expression: expression ?? ExpressionStruct(),
    );
