import 'package:flutter/material.dart';
import 'package:cc206_ultron_ai/features/scanner_web_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScannerWebPage(),
    );
  }
}
