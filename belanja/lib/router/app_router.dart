import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/item_page.dart';
import '../models/item.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      // Home route
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      ),
      // Item detail route with parameter
      GoRoute(
        path: '/item',
        name: 'item',
        builder: (context, state) {
          final item = state.extra as Item;
          return ItemPage(item: item);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('Page not found: ${state.uri.toString()}')),
    ),
  );
}
