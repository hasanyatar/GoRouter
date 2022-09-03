import 'package:app/provider/app_state.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 3', style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 20),
            Text('text : $text', style: Theme.of(context).textTheme.headline5),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // * when token is expired or user logged out
                context.read<AppState>().setLoggedIn(false);
              },
              child: const Text('Logout'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push('/page4');
              },
              child: const Text('Go to Page 4'),
            ),
          ],
        ),
      ),
    );
  }
}
