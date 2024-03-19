import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class PrayerCtrl extends GetxController {
  
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();


  List<Container> cards = [
    Container(
      alignment: Alignment.center,
      child: const Text('1'),
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
    )
  ];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

 @override
  void dispose() async{
    // TODO: implement dispose
    super.dispose();
    await _stopWatchTimer.dispose();
  }
}
