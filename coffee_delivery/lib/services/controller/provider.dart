import 'package:flutter/cupertino.dart';

class CounterPr with ChangeNotifier {
  int _value = 1;
  double _item = 9;

  void increment() {
    _value++;
    _item = _item + 9;
    notifyListeners();
  }

  void decrement() {
    if (_value > 1 && _item > 9) {
      _value--;
      _item -= 9;
    } else {}
    notifyListeners();
  }




  int get currentCount => _value;
  double get currentItem => _item;

}
