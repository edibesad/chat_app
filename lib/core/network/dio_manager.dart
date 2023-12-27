import 'package:dio/dio.dart';

class DioManager {
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
}
