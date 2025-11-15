import 'package:flutter_ai_shop_test/config/environment/environment_config_interface.dart';
import 'package:flutter_ai_shop_test/core/network/api_client.dart';
import 'package:flutter_ai_shop_test/features/order/data/repositories/order_repository_impl.dart';
import 'package:flutter_ai_shop_test/features/order/data/service/order_service.dart';
import 'package:flutter_ai_shop_test/features/order/domain/repositories/order_repository.dart';
import 'package:flutter_ai_shop_test/features/order/domain/usecases/parse_order_usecase.dart';
import 'package:flutter_ai_shop_test/features/order/presentation/bloc/order_bloc.dart';
import 'package:flutter_ai_shop_test/features/products/data/repositories/products_repository_impl.dart';
import 'package:flutter_ai_shop_test/features/products/data/service/products_service.dart';
import 'package:flutter_ai_shop_test/features/products/domain/repositories/products_repository.dart';
import 'package:flutter_ai_shop_test/features/products/domain/usecases/get_products_usecases.dart';
import 'package:flutter_ai_shop_test/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter_ai_shop_test/shared/usecases/get_cached_products.dart';
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

  //Services
  getIt.registerLazySingleton<ProductsService>(
    () => ProductsService(getIt<ApiClient>()),
  );
  getIt.registerLazySingleton<OrderService>(
    () => OrderService(getIt<ApiClient>()),
  );

  //Repositories
  getIt.registerLazySingleton<ProductsRepository>(
    () => ProductsRepositoryImpl(getIt<ProductsService>()),
  );
  getIt.registerLazySingleton<OrderRepository>(
    () => OrderRepositoryImpl(getIt<OrderService>()),
  );

  //UseCases
  getIt.registerLazySingleton<GetProductsUseCase>(
    () => GetProductsUseCase(getIt<ProductsRepository>()),
  );
  getIt.registerLazySingleton<ParseOrderUseCase>(
    () => ParseOrderUseCase(getIt<OrderRepository>()),
  );
  getIt.registerLazySingleton<GetCachedProductsUseCase>(
    () => GetCachedProductsUseCase(getIt<ProductsRepository>()),
  );

  //Blocs
  getIt.registerLazySingleton<ProductsBloc>(
    () => ProductsBloc(getIt<GetProductsUseCase>()),
  );
  getIt.registerLazySingleton<OrderBloc>(
    () => OrderBloc(
      getIt<GetCachedProductsUseCase>(),
      getIt<ParseOrderUseCase>(),
    ),
  );
}
