import 'package:dio/dio.dart';
import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/network/api_client.dart';
import 'package:flutter_ai_shop_test/features/products/data/repositories/products_repository_impl.dart';
import 'package:flutter_ai_shop_test/features/products/data/service/products_service.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';
import 'package:get_it/get_it.dart';

import '../../config/environment/environment_config.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  //Env config
  getIt.registerLazySingleton<EnvironmentConfigInterface>(
    () => EnvironmentConfig(),
  );

  //Api Client
  getIt.registerLazySingleton<ApiClient>(() => ApiClient(getIt()));

  getIt.registerLazySingleton<Dio>(
    () => getIt<ApiClient>().openAiDio(),
    instanceName: Constants.openAiDio,
  );

  getIt.registerLazySingleton<Dio>(
    () => getIt<ApiClient>().dummyJsonDio(),
    instanceName: Constants.dummyJsonDio,
  );

  //Services
  getIt.registerFactory<ProductsService>(
    () =>
        ProductsService(getIt<ApiClient>(instanceName: Constants.dummyJsonDio)),
  );
  // Repositories
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(getIt<ProductsService>()),
  );
}
