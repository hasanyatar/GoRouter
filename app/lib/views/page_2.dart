import 'package:flutter/material.dart';

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
            // ignore: prefer_const_constructors
            SizedBox(height: 20),
            Text('text : $text', style: Theme.of(context).textTheme.headline5),
          ],
        ),
      ),
    );
  }
}
