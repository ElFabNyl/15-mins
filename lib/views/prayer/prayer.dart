import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:retraite/controllers/prayerCtrl.dart';

class PrayerScreen extends StatelessWidget {
  const PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    PrayerCtrl prayerCtrl = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                width: MediaQuery.of(context).size.width * 0.9,
                child: CardSwiper(
                  cardsCount: prayerCtrl.cards.length,
                  numberOfCardsDisplayed: 4,
                  onEnd: () {
                    //
                  },
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          prayerCtrl.cards[index],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text("Swipe to change"),
              ),
              const SizedBox(height: 25),
              Column(
                children: [
                  Obx(() => Text(
                        prayerCtrl.displayTime.value,
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: prayerCtrl.startTimer,
                        child: const Text('Start'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: (){
                          prayerCtrl.stopTimer();
                       
                          print(prayerCtrl.displayTime.value);
                        },
                        child: const Text('Stop'),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: (){
                          //
                          //! do not save if the time 00:00:00:00
                        },
                        child: const Text('Save'),
                      )
                    ],
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
