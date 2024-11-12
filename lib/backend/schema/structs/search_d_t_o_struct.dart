// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SearchDTOStruct extends BaseStruct {
  SearchDTOStruct({
    String? sortOrder,
    String? sortField,
    int? actualPage,
    int? pageSize,
    FilterDTOStruct? filter,
  })  : _sortOrder = sortOrder,
        _sortField = sortField,
        _actualPage = actualPage,
        _pageSize = pageSize,
        _filter = filter;

  // "sortOrder" field.
  String? _sortOrder;
  String get sortOrder => _sortOrder ?? '';
  set sortOrder(String? val) => _sortOrder = val;

  bool hasSortOrder() => _sortOrder != null;

  // "sortField" field.
  String? _sortField;
  String get sortField => _sortField ?? '';
  set sortField(String? val) => _sortField = val;

  bool hasSortField() => _sortField != null;

  // "ActualPage" field.
  int? _actualPage;
  int get actualPage => _actualPage ?? 0;
  set actualPage(int? val) => _actualPage = val;

  void incrementActualPage(int amount) => actualPage = actualPage + amount;

  bool hasActualPage() => _actualPage != null;

  // "pageSize" field.
  int? _pageSize;
  int get pageSize => _pageSize ?? 10;
  set pageSize(int? val) => _pageSize = val;

  void incrementPageSize(int amount) => pageSize = pageSize + amount;

  bool hasPageSize() => _pageSize != null;

  // "filter" field.
  FilterDTOStruct? _filter;
  FilterDTOStruct get filter => _filter ?? FilterDTOStruct();
  set filter(FilterDTOStruct? val) => _filter = val;

  void updateFilter(Function(FilterDTOStruct) updateFn) {
    updateFn(_filter ??= FilterDTOStruct());
  }

  bool hasFilter() => _filter != null;

  static SearchDTOStruct fromMap(Map<String, dynamic> data) => SearchDTOStruct(
        sortOrder: data['sortOrder'] as String?,
        sortField: data['sortField'] as String?,
        actualPage: castToType<int>(data['ActualPage']),
        pageSize: castToType<int>(data['pageSize']),
        filter: FilterDTOStruct.maybeFromMap(data['filter']),
      );

  static SearchDTOStruct? maybeFromMap(dynamic data) => data is Map
      ? SearchDTOStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sortOrder': _sortOrder,
        'sortField': _sortField,
        'ActualPage': _actualPage,
        'pageSize': _pageSize,
        'filter': _filter?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sortOrder': serializeParam(
          _sortOrder,
          ParamType.String,
        ),
        'sortField': serializeParam(
          _sortField,
          ParamType.String,
        ),
        'ActualPage': serializeParam(
          _actualPage,
          ParamType.int,
        ),
        'pageSize': serializeParam(
          _pageSize,
          ParamType.int,
        ),
        'filter': serializeParam(
          _filter,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SearchDTOStruct fromSerializableMap(Map<String, dynamic> data) =>
      SearchDTOStruct(
        sortOrder: deserializeParam(
          data['sortOrder'],
          ParamType.String,
          false,
        ),
        sortField: deserializeParam(
          data['sortField'],
          ParamType.String,
          false,
        ),
        actualPage: deserializeParam(
          data['ActualPage'],
          ParamType.int,
          false,
        ),
        pageSize: deserializeParam(
          data['pageSize'],
          ParamType.int,
          false,
        ),
        filter: deserializeStructParam(
          data['filter'],
          ParamType.DataStruct,
          false,
          structBuilder: FilterDTOStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SearchDTOStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SearchDTOStruct &&
        sortOrder == other.sortOrder &&
        sortField == other.sortField &&
        actualPage == other.actualPage &&
        pageSize == other.pageSize &&
        filter == other.filter;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([sortOrder, sortField, actualPage, pageSize, filter]);
}

SearchDTOStruct createSearchDTOStruct({
  String? sortOrder,
  String? sortField,
  int? actualPage,
  int? pageSize,
  FilterDTOStruct? filter,
}) =>
    SearchDTOStruct(
      sortOrder: sortOrder,
      sortField: sortField,
      actualPage: actualPage,
      pageSize: pageSize,
      filter: filter ?? FilterDTOStruct(),
    );
