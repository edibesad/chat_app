import 'dart:async';

import 'package:chat_app/core/abstracts/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../services/custom_auth_service.dart';

final class AppInit {
  Future<void> init() async {
    await runZonedGuarded(_initialize, (error, stack) {});
  }

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    GetIt.I.registerSingleton<AuthService>(CustomAuthService());
  }
}
