// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_personal_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserPersonalInfoModel _$UserPersonalInfoModelFromJson(
        Map<String, dynamic> json) =>
    UserPersonalInfoModel(
      json['id'] as int?,
      json['phone'] == null
          ? null
          : PhoneModel.fromJson(json['phone'] as Map<String, dynamic>),
      json['email'] as String?,
      json['firstName'] as String?,
      json['lastName'] as String?,
      json['birthdate'] == null
          ? null
          : DateTime.parse(json['birthdate'] as String),
      json['prefix'] as String?,
      json['position'] as String?,
      json['cityId'] as int?,
      json['address'] as String?,
      json['profilePicture'] == null
          ? null
          : PictureModel.fromJson(
              json['profilePicture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPersonalInfoModelToJson(
        UserPersonalInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthdate': instance.birthdate?.toIso8601String(),
      'prefix': instance.prefix,
      'position': instance.position,
      'cityId': instance.cityId,
      'address': instance.address,
      'profilePicture': instance.profilePicture,
    };
