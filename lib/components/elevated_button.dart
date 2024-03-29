import 'package:flutter/material.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Widget text;
  final Color? backgroundColor;
  final double? elevation;
  final void Function() onPressed;
  const DefaultElevatedButton({
    Key? key,
    required this.text,
    this.backgroundColor,
    this.elevation = 0,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.all(15),
        ),
        elevation: MaterialStateProperty.all(elevation),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text,
        ],
      ),
    );
  }
}