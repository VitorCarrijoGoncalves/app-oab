import 'package:dio/dio.dart';
import 'package:servicos_oab/models/login_user_model.dart';
import 'package:retrofit/retrofit.dart';

part 'login_user_repository.g.dart';

@RestApi(baseUrl: 'https://appws.oabgo.org.br/wsoab-homolog')
abstract class LoginUserRepository {
  
  factory LoginUserRepository(Dio dio, {String baseUrl}) = _LoginUserRepository;

  // Login com usuário e senha
  @GET('/usuario/login/{cpf}/{senha}')
  Future<LoginUserModel> findUserByCpfAndPassword(@Path('cpf') String cpf, @Path('senha') String senha);

  // Login com certificado
  @GET('/pessoa/detalhe/{cpf}')
  Future<LoginUserModel> findUserByCpf(@Path('cpf') String cpf);

}