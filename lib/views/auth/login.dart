import 'package:flutter/material.dart';
import 'package:retraite/components/text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 50.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Authentification',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () async {},
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.all(15),
                    ),
                    elevation: MaterialStateProperty.all(0),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffECF1FE),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Connect with Google',
                          style: TextStyle(
                              color: Color(0xff646C83), fontSize: 17.0),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '----------- or -----------',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                InputFormFieldWidget(
                  isEmailInput: true,
                  isnumberInput: false,
                  onChanged: (inputEmail) {},
                  checkInput: (value) {},
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  hintText: 'Email address',
                ),
                const SizedBox(height: 10.0),
                InputFormFieldWidget(
                  isnumberInput: false,
                  isEmailInput: false,
                  onChanged: (inputPwd) {},
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
                    color: Colors.grey,
                  ),
                  hintText: 'Password',
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(
                            color: Color(0xff1960CC),
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                // DefaultElevatedButton(
                //     text: const Text(
                //       'Sign in',
                //       style: TextStyle(fontSize: 17.0),
                //     ),
                //     showArrowBack: false,
                //     showArrowFoward: false,
                //     onPressed: () async {

                //     }),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don’t have an account yet?',
                      style: TextStyle(color: Colors.grey, fontSize: 16.0),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Signup',
                        style: TextStyle(
                          color: Color(0xff1960CC),
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
