import 'package:chat_app/core/models/response_model.dart';
import 'package:chat_app/core/network/dio_manager.dart';
import 'package:chat_app/core/repository/auth_repository.dart';

class CustomAuthService implements AuthRepository {
  @override
  Future<ResponseModel> login(String email, String password) async {
    final response = await DioManager.dio
        .post('/login', data: {'email': email, 'password': password});
    return ResponseModel.fromJson(response.data);
  }

  @override
  Future<ResponseModel> register(
      String name, String email, String password) async {
    final response = await DioManager.dio.post('/register',
        data: {'name': name, 'email': email, 'password': password});
    return ResponseModel.fromJson(response.data);
  }
}
