// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_route_management/route/route_name.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  final String name;
  const ProfileScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome $name"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           ///details way: -> //GoRouter.of(context).go("/");
           ///short way: ->  //context.go('/');

            context.goNamed(RouteNames.dashboard);
          },
          child: Text("Dashboard Screen"),
        ),
      ),
    );
  }
}
