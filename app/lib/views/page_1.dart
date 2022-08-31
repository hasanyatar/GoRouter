import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page 1', style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                const text = "I'm coming from Page 1";
                GoRouter.of(context).push('/page2/$text');
              },
              child: const Text('Go to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
