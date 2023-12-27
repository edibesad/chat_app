import 'package:chat_app/core/models/response_model.dart';

abstract class AuthService {
  Future<ResponseModel> login(String email, String password);
  Future<ResponseModel> register(String name, String email, String password);
}
