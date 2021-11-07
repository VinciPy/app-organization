import 'package:flutter/foundation.dart';

class DarkController extends ChangeNotifier {
  bool isDark = false;

  static DarkController instance = DarkController();

  changeTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}
