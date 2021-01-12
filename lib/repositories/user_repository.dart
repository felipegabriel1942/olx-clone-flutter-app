import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import '../repositories/table_keys.dart';

import '../models/user.dart';

class UserRepository {
  void signUp(User user) {
    final parseUser = ParseUser(
      user.email, 
      user.password, 
      user.email,
    );

    parseUser.set<String>(keyUserName, user.name);
    parseUser.set<String>(keyUserPhone, user.phone);
    parseUser.set<int>(keyUserType, user.type.index);

    parseUser.signUp();
  }
}