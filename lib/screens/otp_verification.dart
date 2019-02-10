import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../blocs/provider.dart';

class phoneVerification extends StatelessWidget{
  Widget build(BuildContext context){
    final bloc = Provider.of(context);
    return Scaffold(
      body: Column(
        children: <Widget>[
          textPart(bloc),
        ],
      ),
    );
  }

  Widget textPart(Bloc bloc) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(top: 40.0),
              child: Text(
                'Verify +91 ${bloc.validPhone}',
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(25.0),
              child: Text(
                'We have sent a SMS with a code to +91 ${bloc.validPhone}',
                style: TextStyle(
                  fontSize: 17.0,
                ),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }

  
}