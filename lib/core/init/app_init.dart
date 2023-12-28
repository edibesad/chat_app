import 'dart:async';

import 'package:chat_app/core/abstracts/auth_service.dart';
import 'package:chat_app/core/abstracts/notif_service.dart';
import 'package:chat_app/core/services/one_signal_notif_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
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
    await Firebase.initializeApp();
  }

  _initServices() {
    GetIt.I.registerSingleton<AuthService>(CustomAuthService());
    GetIt.I.registerSingleton<NotifService>(OneSignalNotifService());
  }
}
