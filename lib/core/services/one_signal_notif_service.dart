import 'dart:developer';

import 'package:chat_app/core/repository/notif_respository.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class OneSignalNotifService implements NotifRepository {
  @override
  Future<void> init() async {
    OneSignal.initialize("75f686b6-a4c1-4acb-a310-d278e86e97b1");
  }

  @override
  Future<void> login(String externalId) async {
    try {
      await OneSignal.login(externalId);
    } catch (e) {
      log(e.toString());
    }
  }
}
