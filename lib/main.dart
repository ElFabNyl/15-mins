import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:retraite/components/text_field.dart';
import 'package:retraite/views/auth/login.dart';
import 'package:retraite/views/auth/signup.dart';
import 'package:retraite/views/auth/email_verification.dart';
import 'package:retraite/views/home/home.dart';
import 'package:retraite/views/prayer/prayer.dart';

import 'helpers/init_controller.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: InitializeDependencies(),
        home: Scaffold(
          backgroundColor: Colors.white,
      body: SafeArea(
        // child: Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 50.0),
          // child: Container(
          //   child: SizedBox(
              
          //       child: Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
          //         child: InputFormFieldWidget(
          //             isnumberInput: false, isEmailInput: false),
          //       )),
          // ),
          
        // ),

        child: PrayerScreen(),
      ),
    ));
  }
}
