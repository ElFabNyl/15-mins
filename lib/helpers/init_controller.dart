import 'package:get/get.dart';
import 'package:retraite/controllers/notificationCtrl.dart';
import 'package:retraite/controllers/prayerCtrl.dart';
import 'package:retraite/controllers/profileCtrl.dart';

import '../controllers/authCtrl.dart';
import '../controllers/prayerStatistics.dart';

class InitializeDependencies implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthCtrl());
    Get.lazyPut(() => PrayerStatisticsCtrl());
    Get.lazyPut(() => PrayerCtrl());
    Get.lazyPut(() => ProfileCtrl());
    Get.lazyPut(() => NotificationCtrl());
  }
}
