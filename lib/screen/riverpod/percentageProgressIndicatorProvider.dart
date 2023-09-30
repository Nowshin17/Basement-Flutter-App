import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PercentageProgressIndicatorProvider extends ChangeNotifier {
  String _percentageString = '';
  String get percentageString => _percentageString;
  updatePercentageString() {
    _percentageString = "100%";
    notifyListeners();
  }
}

final progressIndicatorProvider = ChangeNotifierProvider(
  (ref) {
    return PercentageProgressIndicatorProvider();
  },
);
