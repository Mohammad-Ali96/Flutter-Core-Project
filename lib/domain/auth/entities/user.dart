import 'package:core_package/domain/auth/entities/user_info.dart';

class User {
  final String token;
  final String refreshToken;
  final UserInfo userInfo;

  User(this.token, this.refreshToken, this.userInfo);
}
