import 'package:bloc_demo/feature/counter/ui/counter_screen.dart';
import 'package:bloc_demo/feature/home/ui/home_screen.dart';
import 'package:bloc_demo/feature/post/ui/post_screen.dart';
import 'package:bloc_demo/utils/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        /// Home Screen
        GoRoute(
          name: 'home',
          path: '/',
          pageBuilder: (context, state) => const MaterialPage(
            child: HomeScreen(),
          ),
        ),

        /// Counter Screen
        GoRoute(
          name: AppPages.counterScreen,
          path: '/counter',
          builder: (context, state) => CounterScreen(),
        ),

        /// Post Screen
        GoRoute(
          name: AppPages.postScreen,
          path: '/post',
          builder: (context, state) => const PostScreen(),
        ),
      ],
    );
    return router;
  }
}
