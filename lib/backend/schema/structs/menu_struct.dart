// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MenuStruct extends BaseStruct {
  MenuStruct({
    int? menuId,
    String? name,
    String? page,
    String? icon,
    int? parentMenuId,
    int? position,
    int? permissionId,
    int? expressionId,
    bool? quickLink,
    String? permissionTag,
    List<String>? items,
  })  : _menuId = menuId,
        _name = name,
        _page = page,
        _icon = icon,
        _parentMenuId = parentMenuId,
        _position = position,
        _permissionId = permissionId,
        _expressionId = expressionId,
        _quickLink = quickLink,
        _permissionTag = permissionTag,
        _items = items;

  // "menuId" field.
  int? _menuId;
  int get menuId => _menuId ?? 0;
  set menuId(int? val) => _menuId = val;

  void incrementMenuId(int amount) => menuId = menuId + amount;

  bool hasMenuId() => _menuId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "page" field.
  String? _page;
  String get page => _page ?? '';
  set page(String? val) => _page = val;

  bool hasPage() => _page != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  set icon(String? val) => _icon = val;

  bool hasIcon() => _icon != null;

  // "parentMenuId" field.
  int? _parentMenuId;
  int get parentMenuId => _parentMenuId ?? 0;
  set parentMenuId(int? val) => _parentMenuId = val;

  void incrementParentMenuId(int amount) =>
      parentMenuId = parentMenuId + amount;

  bool hasParentMenuId() => _parentMenuId != null;

  // "position" field.
  int? _position;
  int get position => _position ?? 0;
  set position(int? val) => _position = val;

  void incrementPosition(int amount) => position = position + amount;

  bool hasPosition() => _position != null;

  // "permissionId" field.
  int? _permissionId;
  int get permissionId => _permissionId ?? 0;
  set permissionId(int? val) => _permissionId = val;

  void incrementPermissionId(int amount) =>
      permissionId = permissionId + amount;

  bool hasPermissionId() => _permissionId != null;

  // "expressionId" field.
  int? _expressionId;
  int get expressionId => _expressionId ?? 0;
  set expressionId(int? val) => _expressionId = val;

  void incrementExpressionId(int amount) =>
      expressionId = expressionId + amount;

  bool hasExpressionId() => _expressionId != null;

  // "quickLink" field.
  bool? _quickLink;
  bool get quickLink => _quickLink ?? false;
  set quickLink(bool? val) => _quickLink = val;

  bool hasQuickLink() => _quickLink != null;

  // "permissionTag" field.
  String? _permissionTag;
  String get permissionTag => _permissionTag ?? '';
  set permissionTag(String? val) => _permissionTag = val;

  bool hasPermissionTag() => _permissionTag != null;

  // "items" field.
  List<String>? _items;
  List<String> get items => _items ?? const [];
  set items(List<String>? val) => _items = val;

  void updateItems(Function(List<String>) updateFn) {
    updateFn(_items ??= []);
  }

  bool hasItems() => _items != null;

  static MenuStruct fromMap(Map<String, dynamic> data) => MenuStruct(
        menuId: castToType<int>(data['menuId']),
        name: data['name'] as String?,
        page: data['page'] as String?,
        icon: data['icon'] as String?,
        parentMenuId: castToType<int>(data['parentMenuId']),
        position: castToType<int>(data['position']),
        permissionId: castToType<int>(data['permissionId']),
        expressionId: castToType<int>(data['expressionId']),
        quickLink: data['quickLink'] as bool?,
        permissionTag: data['permissionTag'] as String?,
        items: getDataList(data['items']),
      );

  static MenuStruct? maybeFromMap(dynamic data) =>
      data is Map ? MenuStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'menuId': _menuId,
        'name': _name,
        'page': _page,
        'icon': _icon,
        'parentMenuId': _parentMenuId,
        'position': _position,
        'permissionId': _permissionId,
        'expressionId': _expressionId,
        'quickLink': _quickLink,
        'permissionTag': _permissionTag,
        'items': _items,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'menuId': serializeParam(
          _menuId,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'page': serializeParam(
          _page,
          ParamType.String,
        ),
        'icon': serializeParam(
          _icon,
          ParamType.String,
        ),
        'parentMenuId': serializeParam(
          _parentMenuId,
          ParamType.int,
        ),
        'position': serializeParam(
          _position,
          ParamType.int,
        ),
        'permissionId': serializeParam(
          _permissionId,
          ParamType.int,
        ),
        'expressionId': serializeParam(
          _expressionId,
          ParamType.int,
        ),
        'quickLink': serializeParam(
          _quickLink,
          ParamType.bool,
        ),
        'permissionTag': serializeParam(
          _permissionTag,
          ParamType.String,
        ),
        'items': serializeParam(
          _items,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static MenuStruct fromSerializableMap(Map<String, dynamic> data) =>
      MenuStruct(
        menuId: deserializeParam(
          data['menuId'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        page: deserializeParam(
          data['page'],
          ParamType.String,
          false,
        ),
        icon: deserializeParam(
          data['icon'],
          ParamType.String,
          false,
        ),
        parentMenuId: deserializeParam(
          data['parentMenuId'],
          ParamType.int,
          false,
        ),
        position: deserializeParam(
          data['position'],
          ParamType.int,
          false,
        ),
        permissionId: deserializeParam(
          data['permissionId'],
          ParamType.int,
          false,
        ),
        expressionId: deserializeParam(
          data['expressionId'],
          ParamType.int,
          false,
        ),
        quickLink: deserializeParam(
          data['quickLink'],
          ParamType.bool,
          false,
        ),
        permissionTag: deserializeParam(
          data['permissionTag'],
          ParamType.String,
          false,
        ),
        items: deserializeParam<String>(
          data['items'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'MenuStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MenuStruct &&
        menuId == other.menuId &&
        name == other.name &&
        page == other.page &&
        icon == other.icon &&
        parentMenuId == other.parentMenuId &&
        position == other.position &&
        permissionId == other.permissionId &&
        expressionId == other.expressionId &&
        quickLink == other.quickLink &&
        permissionTag == other.permissionTag &&
        listEquality.equals(items, other.items);
  }

  @override
  int get hashCode => const ListEquality().hash([
        menuId,
        name,
        page,
        icon,
        parentMenuId,
        position,
        permissionId,
        expressionId,
        quickLink,
        permissionTag,
        items
      ]);
}

MenuStruct createMenuStruct({
  int? menuId,
  String? name,
  String? page,
  String? icon,
  int? parentMenuId,
  int? position,
  int? permissionId,
  int? expressionId,
  bool? quickLink,
  String? permissionTag,
}) =>
    MenuStruct(
      menuId: menuId,
      name: name,
      page: page,
      icon: icon,
      parentMenuId: parentMenuId,
      position: position,
      permissionId: permissionId,
      expressionId: expressionId,
      quickLink: quickLink,
      permissionTag: permissionTag,
    );
