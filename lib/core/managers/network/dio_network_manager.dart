import 'dart:developer';

import 'package:chat_app/core/abstracts/network_service.dart';
import 'package:chat_app/core/models/response_model.dart';
import 'package:dio/dio.dart';

class DioManager extends NetworkService {
  static Dio? _dio;
  static const String _baseUrl = 'localhost:8080';
  static Dio get dio {
    _dio ??= Dio(
      BaseOptions(
        baseUrl: _baseUrl,
        connectTimeout: const Duration(milliseconds: 5000),
        receiveTimeout: const Duration(milliseconds: 3000),
      ),
    )..interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) async {
          return handler.next(options);
        },
        onError: (DioException err, handler) async {
          return handler.next(err);
        },
      ));
    return _dio!;
  }

  @override
  Future<ResponseModel> deleteRequest(
      String path, Map<String, dynamic> params) async {
    try {
      final response = await dio.delete(path, queryParameters: params);
      return ResponseModel.fromJson(response.data);
    } catch (e) {
      return ResponseModel(
        status: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<ResponseModel> getRequest(
      String path, Map<String, dynamic> params) async {
    try {
      final response = await dio.get(path, queryParameters: params);
      return ResponseModel.fromJson(response.data);
    } catch (e) {
      return ResponseModel(
        status: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<ResponseModel> postRequest(String path, Map<String, dynamic> params,
      Map<String, dynamic> data) async {
    try {
      final response =
          await dio.post(path, queryParameters: params, data: data);
      return ResponseModel.fromJson(response.data);
    } catch (e) {
      return ResponseModel(
        status: false,
        message: e.toString(),
      );
    }
  }

  @override
  Future<ResponseModel> putRequest(String path, Map<String, dynamic> params,
      Map<String, dynamic> data) async {
    try {
      final response =
          await dio.post(path, queryParameters: params, data: data);
      return ResponseModel.fromJson(response.data);
    } catch (e) {
      return ResponseModel(
        status: false,
        message: e.toString(),
      );
    }
  }

  @override
  void test() {
    log("Dio manager");
  }
}
