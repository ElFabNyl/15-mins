import 'package:flutter/material.dart';
import 'package:retraite/components/text_field.dart';

import '../../components/elevated_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/images/15'mins.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      " |",
                      style: TextStyle(
                          fontSize: 60, color: Color.fromARGB(255, 58, 25, 64)),
                    ),
                    const Expanded(
                      child: Text(
                        "REGISTRATION",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
                InputFormFieldWidget(
                  isEmailInput: false,
                  isnumberInput: false,
                  onChanged: (inputName) {
                    //
                  },
                  checkInput: (value) {
                    //
                  },
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 58, 25, 64),
                  ),
                  hintText: 'User name',
                ),
                const SizedBox(height: 10.0),
                InputFormFieldWidget(
                  isEmailInput: true,
                  isnumberInput: false,
                  onChanged: (inputEmail) {},
                  checkInput: (value) {
                    //
                  },
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 58, 25, 64),
                  ),
                  hintText: 'Email address',
                ),
                const SizedBox(height: 10.0),
                InputFormFieldWidget(
                  isnumberInput: false,
                  isEmailInput: false,
                  onChanged: (inputPwd) {
                    //
                  },
                  checkInput: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Incorrect input';
                    } else if (value.length < 8) {
                      return 'A 8 digits password is required';
                    }
                    return null;
                  },
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color.fromARGB(255, 58, 25, 64),
                  ),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {
                        //
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Color.fromARGB(255, 58, 25, 64),
                      )),
                ),
                InputFormFieldWidget(
                  isEmailInput: false,
                  isnumberInput: false,
                  onChanged: (nationality) {
                    //
                  },
                  checkInput: (value) {
                    //
                  },
                  prefixIcon: const Icon(
                    Icons.flag,
                    color: Color.fromARGB(255, 58, 25, 64),
                  ),
                  hintText: 'Nationality',
                ),
                const SizedBox(height: 10.0),
                DefaultElevatedButton(
                    backgroundColor: const Color.fromARGB(255, 58, 25, 64),
                    text: const Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300),
                    ),
                    onPressed: () async {}),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already a user?',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          color: Color.fromARGB(255, 58, 25, 64),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
