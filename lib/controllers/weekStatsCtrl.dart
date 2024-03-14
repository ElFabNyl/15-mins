import 'package:get/get.dart';

class WeeklyStatisticsController extends GetxController {
  var mondayVolume = 4.40.obs;
  var tuesdayVolume = 2.50.obs;
  var wednesdayVolume = 42.42.obs;
  var thursdayVolume = 100.28.obs;
  var fridayVolume = 88.99.obs;
  var saturdayVolume = 98.18.obs;
  var sundayValue = 12.0.obs;

// Initialize weeklyPrayerStas within the constructor
  List<double> weeklyPrayerStas = [];

  WeeklyStatisticsController() {
    updateWeeklyPrayerStas();
  }

  void updateWeeklyPrayerStas() {
    weeklyPrayerStas = [
      sundayValue.value,
      mondayVolume.value,
      tuesdayVolume.value,
      wednesdayVolume.value,
      thursdayVolume.value,
      fridayVolume.value,
      saturdayVolume.value,
    ];
  }
}
