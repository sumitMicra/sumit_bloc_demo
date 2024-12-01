import 'package:bloc_demo/feature/counter/ui/counter_screen.dart';
import 'package:bloc_demo/feature/home/ui/home_screen.dart';
import 'package:bloc_demo/feature/post/ui/post_screen.dart';
import 'package:bloc_demo/utils/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(

    routes: [
    /// Home Screen
    GoRoute(
      path: '/',
      name: 'home',
      pageBuilder: (context, state) =>const MaterialPage(child: HomeScreen(),) ,),
      /// Counter Screen
    GoRoute(
      path: AppPages.counterScreen,
      name: 'counter',
      pageBuilder: (context, state) => MaterialPage(child: CounterScreen(),) ,),
      /// Post Screen 
    GoRoute(
      path: AppPages.postScreen,
      name: 'post',
      pageBuilder: (context, state) =>const MaterialPage(child: PostScreen(),) ,),
  ],) ;
}