class ConfigEntity {
  ConfigEntity({
    required this.envName,
    required this.appName,
  });

  final String envName;
  final String appName;

  bool get isProd => envName == 'prod';
}
