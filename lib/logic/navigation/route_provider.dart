import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/logic/navigation/routes.dart';
import 'package:flutter_template/ui/unknown/unknown_screen.dart';
import 'package:go_router/go_router.dart';

final router = Provider<GoRouter>((ref) {
  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    initialLocation: Routes.homeRoute.path,
    debugLogDiagnostics: true,
    routes: [
      Routes.homeRoute,
    ],
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const UnknownScreen(),
    ),
  );
});
