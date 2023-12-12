import 'package:flutter/material.dart';

/// Project locale enum for operation and configuration
enum Locales {
  /// Turkish locale
  tr(Locale('tr', 'TR')),

  /// Englis locale
  en(Locale('en', 'US'));

  const Locales(this.locale);

  ///
  final Locale locale;

  ///
  static final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];
}
