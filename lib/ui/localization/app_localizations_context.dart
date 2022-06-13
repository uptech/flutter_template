import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationContext on BuildContext {
  AppLocalizations get localization {
    return AppLocalizations.of(this)!;
  }
}
