import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class MineraDataAuthUser {
  MineraDataAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<MineraDataAuthUser> mineraDataAuthUserSubject =
    BehaviorSubject.seeded(MineraDataAuthUser(loggedIn: false));
Stream<MineraDataAuthUser> mineraDataAuthUserStream() =>
    mineraDataAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
