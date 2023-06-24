import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:peecos/components/app_pdf_viewer.dart';
import 'package:peecos/components/button_rounded.dart';

class DialogDeleteFlyer extends StatelessWidget {
  const DialogDeleteFlyer({Key? key, required this.text, required this.url, required this.date, required this.onYesTap, required this.onNoTap, required this.pdfDocument}) : super(key: key);

  /// Image Url
  final String text;

  /// Image Url
  final String url;

  ///date
  final String date;

  /// callback when button pressed
  final VoidCallback onYesTap;

  /// callback when button pressed
  final VoidCallback onNoTap;

  final PDFDocument pdfDocument;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(24))),
      content: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: _buildImage(),
            ),
            /*
            Padding(
              padding: EdgeInsets.only(bottom: 4),
              child: Text(
                "配布期間",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ),
            */
            if (date != null) Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "配布期間\n$date",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                'こちらのチラシを削除しますか？',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonRounded(
                      onTap: onYesTap,
                      radius: 24.0,
                      borderColor: Colors.indigoAccent,
                      buttonColor: Colors.indigoAccent,
                      buttonPadding: 10,
                      text: 'はい',
                      //Yes
                      textColor: Colors.white,
                      fontSize: 18),
                  ButtonRounded(
                      onTap: onNoTap,
                      radius: 24.0,
                      borderColor: Colors.indigoAccent,
                      buttonColor: Colors.indigoAccent,
                      buttonPadding: 10,
                      text: 'いいえ',
                      //No
                      textColor: Colors.white,
                      fontSize: 18),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    if (url.contains('.pdf')) {
      if (pdfDocument == null) {
        return Container();
      }

      return Container(
        height: 200,
        child: Center(
          child: AppPDFViewer(document: pdfDocument),
        ),
      );
    }

    return Image.network(url, height: 200, fit: BoxFit.contain);
  }
}
