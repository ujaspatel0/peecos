import 'package:flutter/material.dart';
import 'package:peecos/components/button_rounded.dart';

class DialogChangeIcon extends StatelessWidget {
  const DialogChangeIcon({Key? key, required this.onIconTap, required this.onPhotoTap}) : super(key: key);

  /// callback when button pressed
  final VoidCallback onIconTap;
  final VoidCallback onPhotoTap;

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
              padding: EdgeInsets.only(top: 10, bottom: 16),
              child: ButtonRounded(
                  onTap: onIconTap,
                  radius: 24.0,
                  borderColor: Colors.indigoAccent,
                  buttonColor: Colors.indigoAccent,
                  buttonPadding: 10,
                  text: 'PEecoSのアイコンから選ぶ',
                  textColor: Colors.white,
                  fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: ButtonRounded(
                  onTap: onPhotoTap,
                  radius: 24.0,
                  borderColor: Colors.indigoAccent,
                  buttonColor: Colors.indigoAccent,
                  buttonPadding: 10,
                  text: '写真をアップロードする',
                  textColor: Colors.white,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
