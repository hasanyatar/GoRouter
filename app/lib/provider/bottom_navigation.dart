import 'package:flutter/cupertino.dart';

class BottomNavigationState extends ChangeNotifier {
  static final BottomNavigationState _instance = BottomNavigationState._internal();
  static BottomNavigationState get instance => _instance;
  BottomNavigationState._internal();

  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setCurrentIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
