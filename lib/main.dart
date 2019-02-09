import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Go Turf",
      theme: ThemeData(
        primaryColor: Colors.black,
        accentColor: Colors.white,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          textPart()
        ],
      )
    );
  }

  Widget textPart() {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: Text('Verify your phone number',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500
                ),
              )
            ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25.0),
              child: Text('GoTurf will send SMS message to verify your phone number. Enter your country code and phone number:',
              style: TextStyle(
                fontSize: 17.0,
              ),
              textAlign: TextAlign.center,
              )
          ),
        ],
      ),
    );
  }
}