import 'package:app/provider/app_state.dart';
import 'package:app/provider/bottom_navigation.dart';
import 'package:app/routing/routing.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AppState>.value(
          value: AppState.instance,
        ),
        ChangeNotifierProvider<BottomNavigationState>.value(
          value: BottomNavigationState.instance,
        )
      ],
      child: MaterialApp.router(
        routeInformationProvider: router.routeInformationProvider,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
        title: 'Go Route example',
      ),
    );
  }
}
