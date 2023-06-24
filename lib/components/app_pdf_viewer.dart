import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';

class AppPDFViewer extends StatelessWidget {
  const AppPDFViewer({Key? key, required this.document}) : super(key: key);
  final PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return PDFViewer(
      document: document,
      scrollDirection: Axis.vertical,
      showIndicator: false,
    );
  }
}
