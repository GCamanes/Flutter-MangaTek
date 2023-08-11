import 'package:mangatek/core/config/config.entity.dart';

class ConfigHolder {
  factory ConfigHolder() {
    return _instance;
  }

  ConfigHolder._default() {
    currentConfig = ConfigEntity(
      envName: '',
      appName: '',
    );
  }

  late ConfigEntity currentConfig;

  ConfigEntity get config => currentConfig;

  set config(ConfigEntity newConfig) {
    currentConfig = newConfig;
  }

  Future<void> initialize() async {
    const String envName = String.fromEnvironment('ENV_NAME');
    const String appName = String.fromEnvironment('APP_NAME');
    currentConfig = ConfigEntity(
      envName: envName,
      appName: appName,
    );

    /// Add here other values if needed
  }

  static final ConfigHolder _instance = ConfigHolder._default();
}
