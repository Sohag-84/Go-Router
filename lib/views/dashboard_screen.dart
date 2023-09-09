// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_route_management/route/route_name.dart';
import 'package:go_router/go_router.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ///navigate with go router
            // GoRouter.of(context).go("/profile");

            ///passing parameter to Route(Route Parameter)
            // const String name = "Sohag";
            // context.go("/profile/$name");

            ///Named route in Go Router and pass parameter
            // context.goNamed(
            //   RouteNames.profile,
            //   pathParameters: {
            //     'name': "Injamul",
            //   },
            // );

            ///Go Router query parameters
            // context.goNamed(RouteNames.profile, queryParameters: {
            //   'name': "Injamul Haq",
            // });

            ///Go router transition animation
            context.push("/home");
          },
          child: Text("Home Screen"),
        ),
      ),
    );
  }
}
