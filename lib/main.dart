import 'package:flutter/material.dart';
import 'screens/phone_input.dart';
import 'blocs/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
      title: "Go Turf",
      home: PhoneNumberInput(),
      )
    );
  }
}