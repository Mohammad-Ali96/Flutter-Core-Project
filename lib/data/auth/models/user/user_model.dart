import 'package:core_package/data/auth/models/user_info/user_info_model.dart';
import 'package:core_package/domain/auth/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable(createToJson: true)
class UserModel {
  final String token;
  final String refreshToken;
  @JsonKey(name: 'user')
  final UserInfoModel userInfo;

  UserModel(this.token, this.refreshToken, this.userInfo);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copyWith(String token, String refreshToken) {
    return UserModel(
      token,
      refreshToken,
      userInfo,
    );
  }
}

extension MapUserModelToDomain on UserModel {
  User toDomain() => User(
        token,
        refreshToken,
        userInfo.toDomain(),
      );
}
