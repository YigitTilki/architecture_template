import 'package:envied/envied.dart';
import 'package:gen/src/env/app_config_interface.dart';

part 'prod_env.g.dart';

@Envied(path: 'assets/env/.dev.env', obfuscate: true)
final class ProdEnv implements AppConfigInterface {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _ProdEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  String get baseUrl => _baseUrl;
}
