import 'package:get/get.dart';

import '../controllers/weekStatsCtrl.dart';

class InitializeDependencies implements Bindings{
  @override
  void dependencies() {
    // Get.lazyPut(() => AuthCtrl());
   Get.lazyPut(() => WeeklyStatisticsController());
   
  }
}