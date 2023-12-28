import 'package:chat_app/core/constants/enums/locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
final class AppLocalization extends EasyLocalization {
  AppLocalization({super.key, required super.child})
      : super(
            supportedLocales: locales,
            path: translationsPath,
            useOnlyLangCode: true);

  static final locales = Locales.values.map((e) => e.locale).toList();
  static const translationsPath = 'assets/translations';

  static Future<void> updateLanguage(
          {required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}
