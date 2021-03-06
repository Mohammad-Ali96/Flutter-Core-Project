
import 'package:core_package/domain/auth/entities/user_personal_info.dart';

class UserInfo {
  final int? id;
  final String? email;
  final UserPersonalInfo personalInfo;

  UserInfo(
    this.id,
    this.personalInfo,
    this.email,
  );
}
