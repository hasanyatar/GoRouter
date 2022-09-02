import 'package:app/views/login_page.dart';
import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  static final AppState _instance = AppState._internal();
  static AppState get instance => _instance;
  AppState._internal();
  bool _loggedIn = true;
  bool get isLoggedIn => _loggedIn;
  final loginInfo = const LoginPage();

  void setLoggedIn(bool loggedIn) {
    _loggedIn = loggedIn;
    notifyListeners();
  }
}
