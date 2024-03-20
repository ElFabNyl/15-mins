import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 30.0),
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 58, 25, 64),
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 5.0,
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _showInputDialog(context, "Change email");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Change email",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _showInputDialog(context, "Change Phone");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Change Phone",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                _showInputDialog(context, "Change Language");
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Change Language",
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            const SizedBox(height: 50.0),
            const Divider(color: Colors.grey, height: 5),
            const Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 58, 25, 64),
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  "Prayers points news",
                  style: TextStyle(fontSize: 19),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {
                      //
                    },
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Prayers Reminder",
                  style: TextStyle(fontSize: 19),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (value) {
                      //
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Divider(height: 5, color: Colors.grey),
            TextButton(
                onPressed: () {
                  //
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.grey,
                    ),
                    Text(
                      "Sign Out",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }

  void _showInputDialog(BuildContext context, String title) {
    TextEditingController _textFieldController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: _textFieldController,
            decoration: InputDecoration(hintText: "Enter your value"),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            TextButton(
              child: const  Text('OK'),
              onPressed: () {
                print(_textFieldController.text);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
