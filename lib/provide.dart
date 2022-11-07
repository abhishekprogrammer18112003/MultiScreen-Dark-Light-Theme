// ignore: camel_case_types
import 'package:flutter/material.dart';

// ignore: camel_case_types
class countprovider with ChangeNotifier {
  int _count = 0;
  int get count => _count;
  void countincreament() {
    _count++;
    notifyListeners();
  }

  static of(BuildContext context) {}
}

// ignore: camel_case_types
class sliderprovider with ChangeNotifier {
  double _value = 1.0;
  double get value => _value;

  void setvalue(val) {
    _value = val;
    notifyListeners();
  }
}

// ignore: camel_case_types
class themechanger with ChangeNotifier {
  var _thememode = ThemeMode.light;
  ThemeMode get thememode => _thememode;

  void settheme(themedata) {
    _thememode = themedata;
    notifyListeners();
  }
}
