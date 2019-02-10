import 'dart:async';
import 'validators.dart';

class Bloc extends Validators {
  final _phoneNumber = StreamController<String>.broadcast();

  Stream<String> get phoneNumber => _phoneNumber.stream.transform(validatePhoneNumber);

  Function(String) get changePhoneNumber => _phoneNumber.sink.add;
}