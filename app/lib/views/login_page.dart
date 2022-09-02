import 'package:app/provider/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Page'),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  context.read<AppState>().setLoggedIn(true);
                },
                child: const Text('Login')),
          ],
        ),
      ),
    );
  }
}
