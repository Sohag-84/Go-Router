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
            // GoRouter.of(context).go("/profile");
            // const String name = "Sohag";
            // context.go("/profile/$name");

            context.goNamed(
              RouteNames.profile,
              pathParameters: {
                'name': "Injamul",
              },
            );
          },
          child: Text("Profile Screen"),
        ),
      ),
    );
  }
}
