import 'package:flutter/material.dart';
import '../blocs/provider.dart';
import '../blocs/bloc.dart';

class PhoneNumberInput extends StatelessWidget {
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);
    return Scaffold(
        body: Column(
      children: <Widget>[
        textPart(),
        phoneField(bloc),
        Spacer(
          flex: 2,
        ),
        button(bloc),
      ],
    ));
  }

  Widget textPart() {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'Verify your phone number',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25.0),
              child: Text(
                'GoTurf will send SMS message to verify your phone number. Enter your country code and phone number:',
                style: TextStyle(
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }

  Widget phoneField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.phoneNumber,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.only(left: 55.0, right: 55.0),
          child: TextField(
            onChanged: bloc.changePhoneNumber,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                hintText: 'Phone number',
                labelText: 'Phone number',
                errorText: snapshot.error),
          ),
        );
      },
    );
  }

  Widget button(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.phoneNumber,
      builder: (context, snapshot) {
        return Container(
          padding: EdgeInsets.only(top: 45.0, bottom: 25.0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.black,
            child: Text('NEXT'),
            onPressed: snapshot.hasError ? null : (){
              print('It fucking works');
            },
          ),
        );
      },
    );
  }
}
