import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      headerBackgroundColor: Colors.transparent,
      finishButtonText: 'Register',
      finishButtonStyle: const FinishButtonStyle(
        elevation: 3.0,
        backgroundColor: Color.fromARGB(255, 58, 25, 64),
      ),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(color: Colors.grey),
      ),
      background: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/slide1.png')),
         SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/images/slide1.png')),
      ],
      totalPage: 2,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 1'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 2'),
            ],
          ),
        ),
      ],
    );
  }
}
