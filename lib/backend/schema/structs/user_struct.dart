// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    int? userId,
    String? firstName,
    String? surname,
    String? email,
    String? code,
    String? password,
    String? adUser,
    int? adDomainId,
    String? nomeADDomain,
    bool? active,
    int? userProfileId,
    String? token,
    String? picture,
    int? languageId,
    String? languageCode,
    int? companyId,
    String? birthday,
    String? companyFantasyName,
    List<MenuStruct>? menu,
    UserProfileStruct? userProfile,
  })  : _userId = userId,
        _firstName = firstName,
        _surname = surname,
        _email = email,
        _code = code,
        _password = password,
        _adUser = adUser,
        _adDomainId = adDomainId,
        _nomeADDomain = nomeADDomain,
        _active = active,
        _userProfileId = userProfileId,
        _token = token,
        _picture = picture,
        _languageId = languageId,
        _languageCode = languageCode,
        _companyId = companyId,
        _birthday = birthday,
        _companyFantasyName = companyFantasyName,
        _menu = menu,
        _userProfile = userProfile;

  // "userId" field.
  int? _userId;
  int get userId => _userId ?? 0;
  set userId(int? val) => _userId = val;

  void incrementUserId(int amount) => userId = userId + amount;

  bool hasUserId() => _userId != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;

  bool hasFirstName() => _firstName != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  set surname(String? val) => _surname = val;

  bool hasSurname() => _surname != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "adUser" field.
  String? _adUser;
  String get adUser => _adUser ?? '';
  set adUser(String? val) => _adUser = val;

  bool hasAdUser() => _adUser != null;

  // "adDomainId" field.
  int? _adDomainId;
  int get adDomainId => _adDomainId ?? 0;
  set adDomainId(int? val) => _adDomainId = val;

  void incrementAdDomainId(int amount) => adDomainId = adDomainId + amount;

  bool hasAdDomainId() => _adDomainId != null;

  // "nomeADDomain" field.
  String? _nomeADDomain;
  String get nomeADDomain => _nomeADDomain ?? '';
  set nomeADDomain(String? val) => _nomeADDomain = val;

  bool hasNomeADDomain() => _nomeADDomain != null;

  // "active" field.
  bool? _active;
  bool get active => _active ?? false;
  set active(bool? val) => _active = val;

  bool hasActive() => _active != null;

  // "userProfileId" field.
  int? _userProfileId;
  int get userProfileId => _userProfileId ?? 0;
  set userProfileId(int? val) => _userProfileId = val;

  void incrementUserProfileId(int amount) =>
      userProfileId = userProfileId + amount;

  bool hasUserProfileId() => _userProfileId != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;

  bool hasToken() => _token != null;

  // "picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  set picture(String? val) => _picture = val;

  bool hasPicture() => _picture != null;

  // "languageId" field.
  int? _languageId;
  int get languageId => _languageId ?? 0;
  set languageId(int? val) => _languageId = val;

  void incrementLanguageId(int amount) => languageId = languageId + amount;

  bool hasLanguageId() => _languageId != null;

  // "languageCode" field.
  String? _languageCode;
  String get languageCode => _languageCode ?? '';
  set languageCode(String? val) => _languageCode = val;

  bool hasLanguageCode() => _languageCode != null;

  // "companyId" field.
  int? _companyId;
  int get companyId => _companyId ?? 0;
  set companyId(int? val) => _companyId = val;

  void incrementCompanyId(int amount) => companyId = companyId + amount;

  bool hasCompanyId() => _companyId != null;

  // "birthday" field.
  String? _birthday;
  String get birthday => _birthday ?? '';
  set birthday(String? val) => _birthday = val;

  bool hasBirthday() => _birthday != null;

  // "companyFantasyName" field.
  String? _companyFantasyName;
  String get companyFantasyName => _companyFantasyName ?? '';
  set companyFantasyName(String? val) => _companyFantasyName = val;

  bool hasCompanyFantasyName() => _companyFantasyName != null;

  // "menu" field.
  List<MenuStruct>? _menu;
  List<MenuStruct> get menu => _menu ?? const [];
  set menu(List<MenuStruct>? val) => _menu = val;

  void updateMenu(Function(List<MenuStruct>) updateFn) {
    updateFn(_menu ??= []);
  }

  bool hasMenu() => _menu != null;

  // "userProfile" field.
  UserProfileStruct? _userProfile;
  UserProfileStruct get userProfile => _userProfile ?? UserProfileStruct();
  set userProfile(UserProfileStruct? val) => _userProfile = val;

  void updateUserProfile(Function(UserProfileStruct) updateFn) {
    updateFn(_userProfile ??= UserProfileStruct());
  }

  bool hasUserProfile() => _userProfile != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userId: castToType<int>(data['userId']),
        firstName: data['firstName'] as String?,
        surname: data['surname'] as String?,
        email: data['email'] as String?,
        code: data['code'] as String?,
        password: data['password'] as String?,
        adUser: data['adUser'] as String?,
        adDomainId: castToType<int>(data['adDomainId']),
        nomeADDomain: data['nomeADDomain'] as String?,
        active: data['active'] as bool?,
        userProfileId: castToType<int>(data['userProfileId']),
        token: data['token'] as String?,
        picture: data['picture'] as String?,
        languageId: castToType<int>(data['languageId']),
        languageCode: data['languageCode'] as String?,
        companyId: castToType<int>(data['companyId']),
        birthday: data['birthday'] as String?,
        companyFantasyName: data['companyFantasyName'] as String?,
        menu: getStructList(
          data['menu'],
          MenuStruct.fromMap,
        ),
        userProfile: UserProfileStruct.maybeFromMap(data['userProfile']),
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userId': _userId,
        'firstName': _firstName,
        'surname': _surname,
        'email': _email,
        'code': _code,
        'password': _password,
        'adUser': _adUser,
        'adDomainId': _adDomainId,
        'nomeADDomain': _nomeADDomain,
        'active': _active,
        'userProfileId': _userProfileId,
        'token': _token,
        'picture': _picture,
        'languageId': _languageId,
        'languageCode': _languageCode,
        'companyId': _companyId,
        'birthday': _birthday,
        'companyFantasyName': _companyFantasyName,
        'menu': _menu?.map((e) => e.toMap()).toList(),
        'userProfile': _userProfile?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userId': serializeParam(
          _userId,
          ParamType.int,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'surname': serializeParam(
          _surname,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'adUser': serializeParam(
          _adUser,
          ParamType.String,
        ),
        'adDomainId': serializeParam(
          _adDomainId,
          ParamType.int,
        ),
        'nomeADDomain': serializeParam(
          _nomeADDomain,
          ParamType.String,
        ),
        'active': serializeParam(
          _active,
          ParamType.bool,
        ),
        'userProfileId': serializeParam(
          _userProfileId,
          ParamType.int,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'picture': serializeParam(
          _picture,
          ParamType.String,
        ),
        'languageId': serializeParam(
          _languageId,
          ParamType.int,
        ),
        'languageCode': serializeParam(
          _languageCode,
          ParamType.String,
        ),
        'companyId': serializeParam(
          _companyId,
          ParamType.int,
        ),
        'birthday': serializeParam(
          _birthday,
          ParamType.String,
        ),
        'companyFantasyName': serializeParam(
          _companyFantasyName,
          ParamType.String,
        ),
        'menu': serializeParam(
          _menu,
          ParamType.DataStruct,
          isList: true,
        ),
        'userProfile': serializeParam(
          _userProfile,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userId: deserializeParam(
          data['userId'],
          ParamType.int,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        surname: deserializeParam(
          data['surname'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        adUser: deserializeParam(
          data['adUser'],
          ParamType.String,
          false,
        ),
        adDomainId: deserializeParam(
          data['adDomainId'],
          ParamType.int,
          false,
        ),
        nomeADDomain: deserializeParam(
          data['nomeADDomain'],
          ParamType.String,
          false,
        ),
        active: deserializeParam(
          data['active'],
          ParamType.bool,
          false,
        ),
        userProfileId: deserializeParam(
          data['userProfileId'],
          ParamType.int,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        picture: deserializeParam(
          data['picture'],
          ParamType.String,
          false,
        ),
        languageId: deserializeParam(
          data['languageId'],
          ParamType.int,
          false,
        ),
        languageCode: deserializeParam(
          data['languageCode'],
          ParamType.String,
          false,
        ),
        companyId: deserializeParam(
          data['companyId'],
          ParamType.int,
          false,
        ),
        birthday: deserializeParam(
          data['birthday'],
          ParamType.String,
          false,
        ),
        companyFantasyName: deserializeParam(
          data['companyFantasyName'],
          ParamType.String,
          false,
        ),
        menu: deserializeStructParam<MenuStruct>(
          data['menu'],
          ParamType.DataStruct,
          true,
          structBuilder: MenuStruct.fromSerializableMap,
        ),
        userProfile: deserializeStructParam(
          data['userProfile'],
          ParamType.DataStruct,
          false,
          structBuilder: UserProfileStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserStruct &&
        userId == other.userId &&
        firstName == other.firstName &&
        surname == other.surname &&
        email == other.email &&
        code == other.code &&
        password == other.password &&
        adUser == other.adUser &&
        adDomainId == other.adDomainId &&
        nomeADDomain == other.nomeADDomain &&
        active == other.active &&
        userProfileId == other.userProfileId &&
        token == other.token &&
        picture == other.picture &&
        languageId == other.languageId &&
        languageCode == other.languageCode &&
        companyId == other.companyId &&
        birthday == other.birthday &&
        companyFantasyName == other.companyFantasyName &&
        listEquality.equals(menu, other.menu) &&
        userProfile == other.userProfile;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userId,
        firstName,
        surname,
        email,
        code,
        password,
        adUser,
        adDomainId,
        nomeADDomain,
        active,
        userProfileId,
        token,
        picture,
        languageId,
        languageCode,
        companyId,
        birthday,
        companyFantasyName,
        menu,
        userProfile
      ]);
}

UserStruct createUserStruct({
  int? userId,
  String? firstName,
  String? surname,
  String? email,
  String? code,
  String? password,
  String? adUser,
  int? adDomainId,
  String? nomeADDomain,
  bool? active,
  int? userProfileId,
  String? token,
  String? picture,
  int? languageId,
  String? languageCode,
  int? companyId,
  String? birthday,
  String? companyFantasyName,
  UserProfileStruct? userProfile,
}) =>
    UserStruct(
      userId: userId,
      firstName: firstName,
      surname: surname,
      email: email,
      code: code,
      password: password,
      adUser: adUser,
      adDomainId: adDomainId,
      nomeADDomain: nomeADDomain,
      active: active,
      userProfileId: userProfileId,
      token: token,
      picture: picture,
      languageId: languageId,
      languageCode: languageCode,
      companyId: companyId,
      birthday: birthday,
      companyFantasyName: companyFantasyName,
      userProfile: userProfile ?? UserProfileStruct(),
    );
