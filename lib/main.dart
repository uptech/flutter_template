import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Fimber.plantTree(DebugTree());

  Fimber.d('Running Flutter Template app...');

  runApp(const ProviderScope(
    child: App(),
  ));
}
