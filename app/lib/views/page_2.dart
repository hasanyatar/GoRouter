import 'package:app/views/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 2', style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 20),
            Text('text : $text', style: Theme.of(context).textTheme.headline5),
            ElevatedButton(
              onPressed: () {
                const text = "I'm coming from Page 2";
                loggedIn = false; // * when token is expired or user logged out
                GoRouter.of(context).push('/page3', extra: {'text': text});
              },
              child: const Text('Go to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
