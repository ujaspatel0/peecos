import 'package:flutter/material.dart';
import 'package:peecos/components/button_rounded.dart';

class DialogSelectedIcon extends StatelessWidget {
  const DialogSelectedIcon({Key? key, required this.url, required this.onSubmitTap, required this.onReturnTap}) : super(key: key);

  /// Image Url
  final String url;

  /// callback when button pressed
  final VoidCallback onSubmitTap;

  /// callback when button pressed
  final VoidCallback onReturnTap;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: url.isEmpty
                    ? Icon(Icons.account_circle, size: 100, color: Colors.grey)
                    : Image.network(
                  url,
                  height: 90,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 16),
              child: ButtonRounded(
                  onTap: onSubmitTap,
                  radius: 24.0,
                  borderColor: Colors.indigoAccent,
                  buttonColor: Colors.indigoAccent,
                  buttonPadding: 10,
                  text: 'このアイコンで登録する',
                  textColor: Colors.white,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: ButtonRounded(
                  onTap: onReturnTap,
                  radius: 24.0,
                  borderColor: Colors.indigoAccent,
                  buttonColor: Colors.indigoAccent,
                  buttonPadding: 10,
                  text: '戻る',
                  textColor: Colors.white,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

