import 'package:flutter/material.dart';
import 'screens/phone_input.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Go Turf",
      home: PhoneNumberInput(),
    );
  }
}