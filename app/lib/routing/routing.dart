import 'package:app/provider/app_state.dart';
import 'package:app/views/loading_page.dart';
import 'package:app/views/login_page.dart';
import 'package:app/views/page_1.dart';
import 'package:app/views/page_2.dart';
import 'package:app/views/page_3.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/', // * initial route path
  debugLogDiagnostics: true, // * enable debug log
  refreshListenable: AppState.instance, // * refresh when appState changes.

  redirect: (state) {
    final isLoggingIn = state.location == '/login';

    // * anywhere route the logout button is pressed, it will redirect to the login page
    if (!AppState.instance.isLoggedIn && !isLoggingIn) return '/login';

    //* if user is logged inside login page will be redirected to home page
    if (AppState.instance.isLoggedIn && isLoggingIn) return '/';

    return null;
  },

  routes: <GoRoute>[
    GoRoute(
        name: 'homePage',
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const Page1(),
        routes: <GoRoute>[
          GoRoute(
            name: 'page2',
            path: 'page2/:text',
            builder: (BuildContext context, GoRouterState state) {
              return Page2(text: state.params['text']!);
            },
          ),
          //* page3 with Extra params
          GoRoute(
            name: 'page3',
            path: 'page3',
            builder: (BuildContext context, GoRouterState state) {
              final params = state.extra! as Map<String, Object>;
              final text = params['text'] as String;
              return Page3(text: text);
            },
          ),
        ]),
    GoRoute(
      name: 'login',
      path: '/login',
      builder: (BuildContext context, GoRouterState state) => const LoginPage(),
    ),
    GoRoute(
      name: 'loading',
      path: '/loading',
      builder: (BuildContext context, GoRouterState state) => const LoadingPage(),
    ),
  ],
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

extension GoRouterLoading on GoRouter {
  void loadingStart() {
    push('/loading');
  }

  void loadingFinish() {
    if (canPop()) {
      if (location == '/loading') pop();
    }
  }
}
