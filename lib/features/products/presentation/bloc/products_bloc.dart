import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/domain/usecases/get_products_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase _getProductsUseCase;
  ProductsBloc(this._getProductsUseCase) : super(ProductsState.initial()) {
    on<FetchProductsEvent>(_onFetchProductsEvent);
  }

  Future<void> _onFetchProductsEvent(
    FetchProductsEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loading());

    final result = await _getProductsUseCase();

    switch (result) {
      case Success(:final data):
        emit(ProductsState.loaded(data));
      case Error(:final failure):
        emit(ProductsState.error(failure.message));
    }
  }
}
