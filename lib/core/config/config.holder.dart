import 'package:mangatek/core/config/config.entity.dart';
import 'package:mangatek/core/utils/app.constants.dart';

class ConfigHolder {
  factory ConfigHolder() => _instance;

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
    currentConfig = ConfigEntity(
      envName: const String.fromEnvironment(AppConstants.envNameKey),
      appName: const String.fromEnvironment(AppConstants.appNameKey),
    );

    /// Add here other values if needed
  }

  static final ConfigHolder _instance = ConfigHolder._default();
}
