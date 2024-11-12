// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaginacaoStruct extends BaseStruct {
  PaginacaoStruct({
    int? actualPage,
    int? startIndex,
    int? pageSize,
    int? rowsCount,
    int? totalPages,
    List<CnpjdtoStruct>? entities,
  })  : _actualPage = actualPage,
        _startIndex = startIndex,
        _pageSize = pageSize,
        _rowsCount = rowsCount,
        _totalPages = totalPages,
        _entities = entities;

  // "actualPage" field.
  int? _actualPage;
  int get actualPage => _actualPage ?? 0;
  set actualPage(int? val) => _actualPage = val;

  void incrementActualPage(int amount) => actualPage = actualPage + amount;

  bool hasActualPage() => _actualPage != null;

  // "startIndex" field.
  int? _startIndex;
  int get startIndex => _startIndex ?? 0;
  set startIndex(int? val) => _startIndex = val;

  void incrementStartIndex(int amount) => startIndex = startIndex + amount;

  bool hasStartIndex() => _startIndex != null;

  // "pageSize" field.
  int? _pageSize;
  int get pageSize => _pageSize ?? 0;
  set pageSize(int? val) => _pageSize = val;

  void incrementPageSize(int amount) => pageSize = pageSize + amount;

  bool hasPageSize() => _pageSize != null;

  // "rowsCount" field.
  int? _rowsCount;
  int get rowsCount => _rowsCount ?? 0;
  set rowsCount(int? val) => _rowsCount = val;

  void incrementRowsCount(int amount) => rowsCount = rowsCount + amount;

  bool hasRowsCount() => _rowsCount != null;

  // "totalPages" field.
  int? _totalPages;
  int get totalPages => _totalPages ?? 0;
  set totalPages(int? val) => _totalPages = val;

  void incrementTotalPages(int amount) => totalPages = totalPages + amount;

  bool hasTotalPages() => _totalPages != null;

  // "entities" field.
  List<CnpjdtoStruct>? _entities;
  List<CnpjdtoStruct> get entities => _entities ?? const [];
  set entities(List<CnpjdtoStruct>? val) => _entities = val;

  void updateEntities(Function(List<CnpjdtoStruct>) updateFn) {
    updateFn(_entities ??= []);
  }

  bool hasEntities() => _entities != null;

  static PaginacaoStruct fromMap(Map<String, dynamic> data) => PaginacaoStruct(
        actualPage: castToType<int>(data['actualPage']),
        startIndex: castToType<int>(data['startIndex']),
        pageSize: castToType<int>(data['pageSize']),
        rowsCount: castToType<int>(data['rowsCount']),
        totalPages: castToType<int>(data['totalPages']),
        entities: getStructList(
          data['entities'],
          CnpjdtoStruct.fromMap,
        ),
      );

  static PaginacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? PaginacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'actualPage': _actualPage,
        'startIndex': _startIndex,
        'pageSize': _pageSize,
        'rowsCount': _rowsCount,
        'totalPages': _totalPages,
        'entities': _entities?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'actualPage': serializeParam(
          _actualPage,
          ParamType.int,
        ),
        'startIndex': serializeParam(
          _startIndex,
          ParamType.int,
        ),
        'pageSize': serializeParam(
          _pageSize,
          ParamType.int,
        ),
        'rowsCount': serializeParam(
          _rowsCount,
          ParamType.int,
        ),
        'totalPages': serializeParam(
          _totalPages,
          ParamType.int,
        ),
        'entities': serializeParam(
          _entities,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PaginacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaginacaoStruct(
        actualPage: deserializeParam(
          data['actualPage'],
          ParamType.int,
          false,
        ),
        startIndex: deserializeParam(
          data['startIndex'],
          ParamType.int,
          false,
        ),
        pageSize: deserializeParam(
          data['pageSize'],
          ParamType.int,
          false,
        ),
        rowsCount: deserializeParam(
          data['rowsCount'],
          ParamType.int,
          false,
        ),
        totalPages: deserializeParam(
          data['totalPages'],
          ParamType.int,
          false,
        ),
        entities: deserializeStructParam<CnpjdtoStruct>(
          data['entities'],
          ParamType.DataStruct,
          true,
          structBuilder: CnpjdtoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PaginacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PaginacaoStruct &&
        actualPage == other.actualPage &&
        startIndex == other.startIndex &&
        pageSize == other.pageSize &&
        rowsCount == other.rowsCount &&
        totalPages == other.totalPages &&
        listEquality.equals(entities, other.entities);
  }

  @override
  int get hashCode => const ListEquality().hash(
      [actualPage, startIndex, pageSize, rowsCount, totalPages, entities]);
}

PaginacaoStruct createPaginacaoStruct({
  int? actualPage,
  int? startIndex,
  int? pageSize,
  int? rowsCount,
  int? totalPages,
}) =>
    PaginacaoStruct(
      actualPage: actualPage,
      startIndex: startIndex,
      pageSize: pageSize,
      rowsCount: rowsCount,
      totalPages: totalPages,
    );
