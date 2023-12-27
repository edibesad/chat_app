import 'package:chat_app/core/models/response_model.dart';

import '../abstracts/auth_service.dart';

class AuthRepository implements AuthService {
  final AuthService _authRepository;

  AuthRepository({required AuthService authRepository})
      : _authRepository = authRepository;

  @override
  Future<ResponseModel> login(String email, String password) async {
    return await _authRepository.login(email, password);
  }

  @override
  Future<ResponseModel> register(
      String name, String email, String password) async {
    return await _authRepository.register(name, email, password);
  }
}
