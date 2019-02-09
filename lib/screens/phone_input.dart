import 'package:flutter/material.dart';

class PhoneNumberInput extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          textPart(),
          phoneField(),
          Spacer(),
          button(),
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

  Widget phoneField(){
    return Container(
      padding: EdgeInsets.only(left: 55.0, right: 55.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: 'Phone number',
          labelText: 'Phone number'
        ),
      ),
    );
  }

  Widget button() {
    return Container(
        padding: EdgeInsets.only(top: 45.0, bottom: 25.0),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.black,
          child: Text('NEXT'),
          onPressed: (){
          },
        ),
    );
  }
}