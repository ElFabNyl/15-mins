import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45),
          child: const Center(
            child: Text(
              "You have no prayers notifications",
              style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
