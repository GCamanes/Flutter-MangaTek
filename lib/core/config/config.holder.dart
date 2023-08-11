import 'package:firebase_core/firebase_core.dart';
import 'package:mangatek/core/config/config.entity.dart';
import 'package:mangatek/core/config/firebase_configuration.dev.dart'
    as dev_config;
import 'package:mangatek/core/config/firebase_configuration.prod.dart'
    as prod_config;
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

  FirebaseOptions get firebaseConfig {
    if (_instance.config.envName.isEmpty) {
      throw Exception('Unknown environment !');
    }

    switch (_instance.config.envName) {
      case 'prod':
        return prod_config.DefaultFirebaseOptions.currentPlatform;
      default:
        return dev_config.DefaultFirebaseOptions.currentPlatform;
    }
  }
}
