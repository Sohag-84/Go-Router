// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_route_management/views/dashboard_screen.dart';
import 'package:flutter_route_management/views/profile_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Go Router',
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
   // initialLocation: "/profile",
    routes: [
      GoRoute(
        path: "/",
        builder: ((context, state) => DashBoardScreen()),
      ),
      GoRoute(
        path: "/profile/:name",
        builder: ((context, state) => ProfileScreen(
          name: state.pathParameters["name"]!
        )),
      ),
    ],
  );
}
