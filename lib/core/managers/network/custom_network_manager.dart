import 'dart:developer';

import 'package:chat_app/core/models/response_model.dart';
import 'package:chat_app/core/repository/network_repository.dart';

class CustomNetworkManager implements NetworkRepository {
  @override
  Future<ResponseModel> deleteRequest(
      String path, Map<String, dynamic> params) {
    // TODO: implement deleteRequest
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> getRequest(String path, Map<String, dynamic> params) {
    // TODO: implement getRequest
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> postRequest(
      String path, Map<String, dynamic> params, Map<String, dynamic> data) {
    // TODO: implement postRequest
    throw UnimplementedError();
  }

  @override
  Future<ResponseModel> putRequest(
      String path, Map<String, dynamic> params, Map<String, dynamic> data) {
    // TODO: implement putRequest
    throw UnimplementedError();
  }

  @override
  void test() {
    log("Custom network manager");
  }
}
