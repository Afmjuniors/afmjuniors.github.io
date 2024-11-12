import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AccessControl Group Code

class AccessControlGroup {
  static String getBaseUrl() =>
      'https://071c-186-249-231-102.ngrok-free.app/api/AccessControl';
  static Map<String, String> headers = {};
  static GetAccessParameterGETCall getAccessParameterGETCall =
      GetAccessParameterGETCall();
  static UpdateUserLanguagePOSTCall updateUserLanguagePOSTCall =
      UpdateUserLanguagePOSTCall();
  static AuthenticatePOSTCall authenticatePOSTCall = AuthenticatePOSTCall();
  static AuthenticateByCodePOSTCall authenticateByCodePOSTCall =
      AuthenticateByCodePOSTCall();
  static AuthenticateADPOSTCall authenticateADPOSTCall =
      AuthenticateADPOSTCall();
  static AuthenticateFRPOSTCall authenticateFRPOSTCall =
      AuthenticateFRPOSTCall();
  static CheckPermissionGETCall checkPermissionGETCall =
      CheckPermissionGETCall();
  static CheckPermissionByFacePOSTCall checkPermissionByFacePOSTCall =
      CheckPermissionByFacePOSTCall();
  static ListAllPermissionsGETCall listAllPermissionsGETCall =
      ListAllPermissionsGETCall();
  static GetUserGETCall getUserGETCall = GetUserGETCall();
  static GetMenuGETCall getMenuGETCall = GetMenuGETCall();
}

class GetAccessParameterGETCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAccessParameter GET',
      apiUrl: '${baseUrl}/GetAccessParameter',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateUserLanguagePOSTCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? language = '',
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'UpdateUserLanguage POST',
      apiUrl: '${baseUrl}/UpdateUserLanguage/${userId}/${language}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthenticatePOSTCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Authenticate POST',
      apiUrl: '${baseUrl}/Authenticate',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.firstName''',
      ));
  String? surname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.surname''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  int? userId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.userId''',
      ));
}

class AuthenticateByCodePOSTCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "code": "",
  "password": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AuthenticateByCode POST',
      apiUrl: '${baseUrl}/AuthenticateByCode',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthenticateADPOSTCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "adUser": "",
  "password": "",
  "adDomainId": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AuthenticateAD POST',
      apiUrl: '${baseUrl}/AuthenticateAD',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AuthenticateFRPOSTCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userId": 0,
  "image": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AuthenticateFR POST',
      apiUrl: '${baseUrl}/AuthenticateFR',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckPermissionGETCall {
  Future<ApiCallResponse> call({
    String? tag = '',
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'CheckPermission GET',
      apiUrl: '${baseUrl}/CheckPermission',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {
        'tag': tag,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckPermissionByFacePOSTCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "userId": 0,
  "tag": "",
  "image": ""
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckPermissionByFace POST',
      apiUrl: '${baseUrl}/CheckPermissionByFace',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListAllPermissionsGETCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListAllPermissions GET',
      apiUrl: '${baseUrl}/ListAllPermissions',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUserGETCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetUser GET',
      apiUrl: '${baseUrl}/GetUser',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMenuGETCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = AccessControlGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetMenu GET',
      apiUrl: '${baseUrl}/GetMenu',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End AccessControl Group Code

/// Start CNPJ Group Code

class CnpjGroup {
  static String getBaseUrl() => 'https://071c-186-249-231-102.ngrok-free.app/api/CNPJ';
  static Map<String, String> headers = {};
  static ListCidadesCall listCidadesCall = ListCidadesCall();
  static SearchCNPJCall searchCNPJCall = SearchCNPJCall();
  static ListCnaeQueryCall listCnaeQueryCall = ListCnaeQueryCall();
  static ListNaturezaJuridicaQueryCall listNaturezaJuridicaQueryCall =
      ListNaturezaJuridicaQueryCall();
  static ListEstadosCall listEstadosCall = ListEstadosCall();
  static GetDetailsCall getDetailsCall = GetDetailsCall();
}

class ListCidadesCall {
  Future<ApiCallResponse> call({
    String? estado = '',
    String? bearer = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "estado": "${estado}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ListCidades',
      apiUrl: '${baseUrl}/ListCidades',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? nome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idMunicipio(dynamic response) => (getJsonField(
        response,
        r'''$[:].idMunicipio''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class SearchCNPJCall {
  Future<ApiCallResponse> call({
    dynamic? filterJson,
    int? page,
    String? bearer = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    final filter = _serializeJson(filterJson);
    final ffApiRequestBody = '''
${filter}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SearchCNPJ',
      apiUrl: '${baseUrl}/Search',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? entities(dynamic response) => getJsonField(
        response,
        r'''$.entities''',
        true,
      ) as List?;
  int? actualPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.actualPage''',
      ));
  int? totalPage(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.totalPages''',
      ));
  List<String>? entityCNPJ(dynamic response) => (getJsonField(
        response,
        r'''$.entities[:].cnpj''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? entityRazaoSocial(dynamic response) => (getJsonField(
        response,
        r'''$.entities[:].razaoSocial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListCnaeQueryCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? bearer = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "filter": "${filter}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ListCnaeQuery',
      apiUrl: '${baseUrl}/Cnae',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? codigo(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? idCnae(dynamic response) => (getJsonField(
        response,
        r'''$[:].idCnae''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? codigoDescricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigoDescricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListNaturezaJuridicaQueryCall {
  Future<ApiCallResponse> call({
    String? filter = '',
    String? bearer = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "filter": "${filter}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ListNaturezaJuridicaQuery',
      apiUrl: '${baseUrl}/NaturezaJuridica',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? idNaturezaJuridica(dynamic response) => (getJsonField(
        response,
        r'''$[:].idNaturezaJuridica''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? codigo(dynamic response) => (getJsonField(
        response,
        r'''$[:].codigo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? descricao(dynamic response) => (getJsonField(
        response,
        r'''$[:].descricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ListEstadosCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListEstados',
      apiUrl: '${baseUrl}/Estados',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? estadoId(dynamic response) => (getJsonField(
        response,
        r'''$[:].idEstado''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? estadoNome(dynamic response) => (getJsonField(
        response,
        r'''$[:].nome''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? estadoSigla(dynamic response) => (getJsonField(
        response,
        r'''$[:].sigla''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetDetailsCall {
  Future<ApiCallResponse> call({
    String? bearer = '',
    String? cnpj = '',
  }) async {
    final baseUrl = CnpjGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
"cnpj":"${cnpj}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Details',
      apiUrl: '${baseUrl}/GetDeatails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? cnpj(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cnpj''',
      ));
  int? cnpjRaiz(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.cnpjRaiz''',
      ));
  String? razaoSocial(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.razaoSocial''',
      ));
  String? dataAbertura(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dataAbertura''',
      ));
  String? dataAtualizacao(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dataAtualizacao''',
      ));
  String? logradouro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  String? numero(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.numero''',
      ));
  String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  String? municipio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.municipio''',
      ));
  String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.email''',
      ));
  String? telefone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.telefone''',
      ));
  String? atividadePrincipal(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.atividadePrincipal''',
      ));
  List? atividadesSecundaria(dynamic response) => getJsonField(
        response,
        r'''$.atividadeSecundaria''',
        true,
      ) as List?;
  List<String>? codigoDescricaoAtividade(dynamic response) => (getJsonField(
        response,
        r'''$.atividadeSecundaria[:].codigoDescricao''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? isMei(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.cnpjMei''',
      ));
  int? situacaoCastral(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.situacaoCadastral''',
      ));
  int? tipoEstabelecimento(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tipoEstabelecimento''',
      ));
  int? numeroFilial(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.filialNumero''',
      ));
  int? capitalSocial(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.capitalSocial''',
      ));
  String? naturezaJuridica(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.naturezaJuridica''',
      ));
  String? cep(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cep''',
      ));
  String? complemento(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.complemento''',
      ));
  int? ddd1(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ddD1''',
      ));
  int? ddd2(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ddD2''',
      ));
  String? telefone2(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.telefone2''',
      ));
}

/// End CNPJ Group Code

class ExportDataCall {
  static Future<ApiCallResponse> call({
    String? bearer = '',
    dynamic? filterJson,
  }) async {
    final filter = _serializeJson(filterJson);
    final ffApiRequestBody = '''
${filter}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Export Data',
      apiUrl: 'https://071c-186-249-231-102.ngrok-free.app/api/Report/XLS',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pathFile''',
      ));
  static String? fileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.filename''',
      ));
}

class ExportDataCSVCall {
  static Future<ApiCallResponse> call({
    String? bearer = '',
    dynamic? filterJson,
  }) async {
    final filter = _serializeJson(filterJson);
    final ffApiRequestBody = '''
${filter}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Export Data  CSV',
      apiUrl: 'https://071c-186-249-231-102.ngrok-free.app/api/Report/CSV',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${bearer}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? path(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.pathFile''',
      ));
  static String? fileName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.filename''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
