import 'dart:async';

import 'package:chat_app/core/abstracts/auth_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/custom_auth_service.dart';

final class AppInit {
  static AppInit? _instance;

  AppInit._init();

  factory AppInit() => _instance ??= AppInit._init();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(_initAsyncs, (error, stack) {});
    _initServices();
  }

  Future<void> _initAsyncs() async {
    await EasyLocalization.ensureInitialized();
  }

  _initServices() {
    GetIt.I.registerSingleton<AuthService>(CustomAuthService());
  }
}
