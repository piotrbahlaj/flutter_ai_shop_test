import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_ai_shop_test/core/network/api_client.dart';
import 'package:get_it/get_it.dart';

import '../../config/environment/environment_config.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerLazySingleton<EnvironmentConfigInterface>(
    () => EnvironmentConfig(),
  );

  getIt.registerLazySingleton<ApiClient>(
    () => ApiClient(
      environmentConfigInterface: getIt<EnvironmentConfigInterface>(),
    ),
  );

  getIt.registerLazySingleton<Dio>(() => getIt<ApiClient>().dio);
}
