import 'package:flutter/material.dart';
import 'package:retraite/components/elevated_button.dart';
import 'package:retraite/components/text_field.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 100.0),
                        child: Text(
                          "Please check your email address",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.w800),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        "We've send a verification code to elfab@gmail.com",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: Color.fromARGB(255, 82, 81, 81)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0),
                InputFormFieldWidget(
                  checkInput: (confirmationCode) {
                    //
                  },
                  isnumberInput: true,
                  isEmailInput: false,
                  hintText: "Enter verification code",
                  prefixIcon: const Icon(
                    Icons.key,
                    color: Color.fromARGB(255, 58, 25, 64),
                  ),
                ),
                const SizedBox(height: 50.0),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.5,
                  child: DefaultElevatedButton(
                    backgroundColor: const Color.fromARGB(255, 58, 25, 64),
                    text: const Text(
                    
                      "Validate",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    onPressed: () {
                      //
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
