import 'dart:async';
import 'dart:developer';

import 'package:chat_app/core/abstracts/auth_service.dart';
import 'package:chat_app/core/abstracts/network_service.dart';
import 'package:chat_app/core/abstracts/notif_service.dart';
import 'package:chat_app/core/managers/network/dio_network_manager.dart';
import 'package:chat_app/firebase_options.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../managers/auth/custom_auth_manager.dart';
import '../managers/notification/one_signal_notif_manager.dart';

final class AppInit {
  static AppInit? _instance;

  AppInit._init();

  factory AppInit() => _instance ??= AppInit._init();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await runZonedGuarded(_initAsyncs, (error, stack) {
      log(error.toString());
    });
    _initServices();
  }

  Future<void> _initAsyncs() async {
    await EasyLocalization.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  _initServices() {
    GetIt.I.registerSingleton<AuthService>(CustomAuthManager());
    GetIt.I.registerSingleton<NotifService>(OneSignalNotifManager());
    GetIt.I.registerSingleton<NetworkService>(DioManager());
  }
}
