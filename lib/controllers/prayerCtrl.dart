import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class PrayerCtrl extends GetxController {
  
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  var displayTime = ''.obs;
   var timeInMinutes = 0.obs;

  void startTimer() => _stopWatchTimer.onStartTimer();

  void stopTimer() => _stopWatchTimer.onStopTimer();

  void addLap() => _stopWatchTimer.onAddLap();

  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('010101'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: const Color.fromARGB(255, 151, 142, 153),
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('fewkjrfkjerfker'),
      color: Colors.blue,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('2'),
      color: Colors.red,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('3'),
      color: Colors.purple,
    ),
    Container(
      alignment: Alignment.center,
      child: const Text('30'),
      color: const Color.fromARGB(255, 151, 142, 153),
    ),
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _stopWatchTimer.rawTime.listen((value) {
      // Update displayTime whenever rawTime changes
      displayTime.value = StopWatchTimer.getDisplayTime(value, hours: true);
    });
  }

  @override
  void onClose() async {
    // TODO: implement dispose
    await _stopWatchTimer.dispose();
    super.onClose();
  }
}
