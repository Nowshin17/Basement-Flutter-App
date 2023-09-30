import 'package:country_picker/country_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WidgetsProvider extends ChangeNotifier {
  Country? _selectedCountry;
  get selectedCountry => _selectedCountry;
  changeSelectedCountryCode(country) {
    _selectedCountry = country;
    notifyListeners();
  }
}

final widgetProvider = ChangeNotifierProvider<WidgetsProvider>(
  (ref) {
    return WidgetsProvider();
  },
);
