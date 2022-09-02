import 'package:app/provider/app_state.dart';

class FakeService {
  static Future<void> fakeServiceCall() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
