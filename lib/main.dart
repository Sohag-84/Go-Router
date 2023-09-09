// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_route_management/route/route_name.dart';
import 'package:flutter_route_management/views/dashboard_screen.dart';
import 'package:flutter_route_management/views/error_screen.dart';
import 'package:flutter_route_management/views/login_screen.dart';
import 'package:flutter_route_management/views/profile_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

///check user already logged in or not
bool isLoggedIn = true;

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
    //  routes: [
    //    GoRoute(
    //      path: "/",
    //      builder: ((context, state) => DashBoardScreen()),
    //    ),
    //    GoRoute(
    //      path: "/profile/:name",
    //      builder: ((context, state) => ProfileScreen(
    //        name: state.pathParameters["name"]!
    //      )),
    //    ),
    //  ],

    ///Named Route in Go Router
    // routes: [
    //   GoRoute(
    //     name: RouteNames.dashboard,
    //     path: "/",
    //     builder: (context, state) => DashBoardScreen(),
    //     routes: [
    //       GoRoute(
    //         name: RouteNames.profile,
    //         path: "profile/:name",
    //         builder: (context, state) =>
    //             ProfileScreen(name: state.pathParameters['name']!),
    //       ),
    //     ],
    //   ),
    // ],

    ///--> Go Router Query Parameters
    // routes: [
    //   GoRoute(
    //     name: RouteNames.dashboard,
    //     path: "/",
    //     builder: (context, state) => DashBoardScreen(),
    //     routes: [
    //       GoRoute(
    //         name: RouteNames.profile,
    //         path: "profile",
    //         builder: (context, state) =>
    //             ProfileScreen(name: state.uri.queryParameters['name']!),
    //       ),
    //     ],
    //   ),
    // ],

    ///check user logged in or not
    ///--> Go router redirect

    // redirect: (context, state) {
    //    if (isLoggedIn) {
    //      return "/dashboard";
    //    } else {
    //      return "/";
    //    }
    //  },
    //  routes: [
    //    GoRoute(path: "/", builder: (context, state) => LogInScreen()),
    //    GoRoute(
    //      path: "/dashboard",
    //      builder: (context, state) => DashBoardScreen(),
    //    ),
    //  ],

    ///if route not found
    errorBuilder: (context, state) => ErrorScreen(),
    redirect: (context, state) {
      if (isLoggedIn) {
        return "/text";
      } else {
        return "/";
      }
    },
    routes: [
      GoRoute(path: "/", builder: (context, state) => LogInScreen()),
      GoRoute(
        path: "/dashboard",
        builder: (context, state) => DashBoardScreen(),
      ),
    ],
  );
}
