import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationProvider extends ChangeNotifier {
  String _genderTypeValue = "";
  String _genderTypeValue1 = "";
  String get genderTypeValue => _genderTypeValue;
  String get genderTypeValue1 => _genderTypeValue1;
  void controllChange(Object? value) {
    print(value);
    _genderTypeValue = value.toString();
    notifyListeners();
  }

  void controllChange2(Object? value) {
    print(value);
    _genderTypeValue1 = value.toString();
    notifyListeners();
  }
}

final registrationProvider = ChangeNotifierProvider<RegistrationProvider>(
  (ref) {
    return RegistrationProvider();
  },
);
