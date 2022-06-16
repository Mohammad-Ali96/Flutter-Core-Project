// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_remote_datasource.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _AuthRemoteDataSourceImpl implements AuthRemoteDataSourceImpl {
  _AuthRemoteDataSourceImpl(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<BaseResponse<UserModel>> login(email, password) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email, 'password': password};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<UserModel>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/login?shortTerm=0',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<UserModel>.fromJson(
      _result.data!,
      (json) => UserModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<BaseResponse<RefreshTokenResponseModel>> refreshToken(
      refreshToken) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'refreshToken': refreshToken};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<RefreshTokenResponseModel>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/auth/token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<RefreshTokenResponseModel>.fromJson(
      _result.data!,
      (json) =>
          RefreshTokenResponseModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<String> resetPassword(email) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'email': email};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/auth/reset-password',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<String> changePassword(userId, oldPassword, newPassword) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = {'oldPassword': oldPassword, 'newPassword': newPassword};
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'PATCH', headers: _headers, extra: _extra)
            .compose(_dio.options, '/user/${userId}/change-password',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<BaseResponse<UserInfoModel>> editPersonalInfo(userId, email, firstName,
      lastName, phone, prefix, position, birthdate, address, cityId,
      {avatar}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('email', email));
    _data.fields.add(MapEntry('firstName', firstName));
    _data.fields.add(MapEntry('lastName', lastName));
    _data.fields.add(MapEntry('phone', phone));
    if (prefix != null) {
      _data.fields.add(MapEntry('prefix', prefix));
    }
    _data.fields.add(MapEntry('position', position));
    if (birthdate != null) {
      _data.fields.add(MapEntry('birthdate', birthdate));
    }
    _data.fields.add(MapEntry('address', address));
    _data.fields.add(MapEntry('cityId', cityId.toString()));
    if (avatar != null) {
      _data.files.add(MapEntry(
          'avatar',
          MultipartFile.fromFileSync(avatar.path,
              filename: avatar.path.split(Platform.pathSeparator).last,
              contentType: MediaType.parse('image/jpeg'))));
    }
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<BaseResponse<UserInfoModel>>(
            Options(method: 'PATCH', headers: _headers, extra: _extra)
                .compose(_dio.options, '/user/${userId}/update',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = BaseResponse<UserInfoModel>.fromJson(
      _result.data!,
      (json) => UserInfoModel.fromJson(json as Map<String, dynamic>),
    );
    return value;
  }

  @override
  Future<String> signUp(
      name,
      cityId,
      address,
      area,
      latitude,
      longitude,
      email,
      phone,
      firstName,
      lastName,
      postalCode,
      prefix,
      position,
      isBusiness,
      birthdate,
      {logo}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = FormData();
    _data.fields.add(MapEntry('name', name));
    _data.fields.add(MapEntry('cityId', cityId.toString()));
    _data.fields.add(MapEntry('address', address));
    _data.fields.add(MapEntry('area', area));
    _data.fields.add(MapEntry('latitude', latitude.toString()));
    _data.fields.add(MapEntry('longitude', longitude.toString()));
    _data.fields.add(MapEntry('email', email));
    _data.fields.add(MapEntry('phone', phone));
    _data.fields.add(MapEntry('firstName', firstName));
    _data.fields.add(MapEntry('lastName', lastName));
    _data.fields.add(MapEntry('postalCode', postalCode));
    if (prefix != null) {
      _data.fields.add(MapEntry('prefix', prefix));
    }
    _data.fields.add(MapEntry('position', position));
    _data.fields.add(MapEntry('isBusiness', isBusiness.toString()));
    if (birthdate != null) {
      _data.fields.add(MapEntry('birthdate', birthdate));
    }
    if (logo != null) {
      _data.files.add(MapEntry(
          'logo',
          MultipartFile.fromFileSync(logo.path,
              filename: logo.path.split(Platform.pathSeparator).last,
              contentType: MediaType.parse('image/jpeg'))));
    }
    final _result = await _dio.fetch<String>(_setStreamType<String>(
        Options(method: 'POST', headers: _headers, extra: _extra)
            .compose(_dio.options, '/company/customer/signup',
                queryParameters: queryParameters, data: _data)
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
