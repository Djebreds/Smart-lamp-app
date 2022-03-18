import 'package:flutter/material.dart';
import 'package:smart_lamp_app/login_ui/masuk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Masuk(),
    );
  }
}
