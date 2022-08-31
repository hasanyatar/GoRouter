import 'package:app/views/page_1.dart';
import 'package:app/views/page_2.dart';
import 'package:app/views/page_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: 'page1',
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const Page1(),
    ),
    GoRoute(
      name: 'page2',
      path: '/page2/:text',
      builder: (BuildContext context, GoRouterState state) {
        return Page2(text: state.params['text']!);
      },
    ),
    //* page3 with Extra params
    GoRoute(
      name: 'page3',
      path: '/page3',
      builder: (BuildContext context, GoRouterState state) {
        final params = state.extra! as Map<String, Object>;
        final text = params['text'] as String;
        return Page3(text: text);
      },
    ),
  ],
  initialLocation: '/',
  errorBuilder: (context, state) => ErrorScreen(state.error!),
);

// * ERROR SCREEN
class ErrorScreen extends StatelessWidget {
  const ErrorScreen(this.error, {Key? key}) : super(key: key);
  final Exception error;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('My "Page Not Found" Screen')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(error.toString()),
              TextButton(
                onPressed: () => context.go('/'),
                child: const Text('Home'),
              ),
            ],
          ),
        ),
      );
}
