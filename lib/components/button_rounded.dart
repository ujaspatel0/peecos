import 'package:flutter/material.dart';

class ButtonRounded extends StatelessWidget {
  const ButtonRounded({Key? key, required this.onTap, required this.radius, required this.borderColor, required this.buttonColor, required this.buttonPadding, required this.text, required this.textColor, required this.fontSize}) : super(key: key);

  /// callback when button pressed
  final VoidCallback onTap;

  /// set border radius
  final double radius;

  /// set border color
  final Color borderColor;

  /// set button color
  final Color buttonColor;

  /// set button padding
  final double buttonPadding;

  /// set button text
  final String text;

  /// set button text color
  final Color textColor;

  /// set font size
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: textColor, backgroundColor: buttonColor, shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
            side: BorderSide(color: borderColor)),
        padding: EdgeInsets.only(
            top: 7,
            right: 16,
            bottom: 10,
            left: 16
        ),
        elevation: 0,
        textStyle: TextStyle(
          fontSize: fontSize,
        ),
      ),
      child: Text(text,
        textAlign: TextAlign.center,
      ),
    );
  }
}
