// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _LoginUserRepository implements LoginUserRepository {
  _LoginUserRepository(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://appws.oabgo.org.br/wsoab-homolog';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<LoginUserModel> findUserByCpfAndPassword(cpf, senha) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginUserModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/usuario/login/${cpf}/${senha}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginUserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginUserModel> findUserByCpf(cpf) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginUserModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/pessoa/detalhe/${cpf}',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginUserModel.fromJson(_result.data!);
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
