import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retraite/components/text_field.dart';
import 'package:retraite/views/auth/login.dart';

import 'helpers/init_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
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

        child: LoginScreen(),
      ),
    ));
  }
}
