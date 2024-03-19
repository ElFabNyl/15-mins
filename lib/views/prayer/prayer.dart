import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';
import 'package:retraite/controllers/prayerCtrl.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class PrayerScreen extends StatelessWidget {
 const  PrayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
   PrayerCtrl prayerCtrl = Get.find();
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.55,
                width: MediaQuery.of(context).size.width*0.9,
                child: CardSwiper(
                  cardsCount: prayerCtrl.cards.length,
                  numberOfCardsDisplayed: 4,
                  

                  onEnd: (){
                    //
                  },
                  cardBuilder:
                      (context, index, percentThresholdX, percentThresholdY) =>
                          prayerCtrl.cards[index],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text("Swipe to change"),
              ),
              
              

            ]),
          ),
        ),
      ),
    );
  }
}
