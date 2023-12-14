import 'package:architecture_template/product/init/config/app_config_interface.dart';
import 'package:architecture_template/product/init/config/develop_env.dart';
import 'package:architecture_template/product/init/config/prod_env.dart';
import 'package:flutter/foundation.dart';

/// App Env Manager
final class AppEnvironment {
  ///Setup App Env
  AppEnvironment.setup({required AppConfigInterface config}) {
    _config = config;
  }

  ///General App Env
  AppEnvironment.general() {
    _config = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfigInterface _config;
}

///
enum AppEnvironmentItems {
  ///Network Base URL
  baseUrl,

  ///Google Maps Api Key
  apiKey;

  /// Get AppEnv value
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._config.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._config.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnv is not initialized');
    }
  }
}
