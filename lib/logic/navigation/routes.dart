import 'package:flutter/material.dart';
import 'package:flutter_template/ui/home/home_screen.dart';
import 'package:go_router/go_router.dart';

enum RouteName {
  home,
}

class Routes {
  static final homeRoute = GoRoute(
    name: RouteName.home.name,
    path: '/',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const HomeScreen(),
    ),
  );
}
