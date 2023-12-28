import '../abstracts/notif_service.dart';

class NotifRepository implements NotifService {
  final NotifService _notifService;

  NotifRepository({required NotifService notifService})
      : _notifService = notifService;
  @override
  Future<void> init() async {
    await _notifService.init();
  }

  @override
  Future<void> login(String externalId) async {
    await _notifService.login(externalId);
  }
}
