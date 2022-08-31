import 'package:app/views/page_1.dart';
import 'package:app/views/page_2.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: 'page1',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Page1();
      },
    ),
    GoRoute(
      name: 'page2',
      path: '/page2',
      builder: (BuildContext context, GoRouterState state) {
        return const Page2();
      },
    ),
  ],
);
