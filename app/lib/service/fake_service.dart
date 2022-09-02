class FakeService {
  static Future<void> fakeServiceCall() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
