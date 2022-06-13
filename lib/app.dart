import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/ui/themes/app_theme.dart';

import 'logic/navigation/route_provider.dart';

class App extends ConsumerStatefulWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();
    Fimber.d("Running App");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Template',
      theme: AppTheme.light().themeData,
      darkTheme: AppTheme.dark().themeData,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routeInformationParser: ref.watch(router).routeInformationParser,
      routerDelegate: ref.watch(router).routerDelegate,
      supportedLocales: const [
        Locale('en'),
      ],
    );
  }
}
