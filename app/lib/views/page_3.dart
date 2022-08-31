import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}
