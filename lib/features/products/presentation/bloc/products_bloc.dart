import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/products/data/models/product/product_model.dart';
import 'package:flutter_ai_shop_test/features/products/domain/usecases/get_products_usecases.dart';
import 'package:flutter_ai_shop_test/features/products/domain/usecases/search_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_bloc.freezed.dart';
part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final GetProductsUseCase _getProductsUseCase;
  final SearchProductsUsecase _searchProductsUsecase;
  ProductsBloc(this._getProductsUseCase, this._searchProductsUsecase)
    : super(const ProductsState.loaded(allProducts: [])) {
    on<FetchProductsEvent>(_onFetchProductsEvent);
    on<SearchEvent>(_onSearchEvent);
  }

  Future<void> _onFetchProductsEvent(
    FetchProductsEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(const ProductsState.loading());

    final result = await _getProductsUseCase();

    switch (result) {
      case Success(:final data):
        emit(
          ProductsState.loaded(
            allProducts: data,
            displayedProducts: data,
            searchQuery: '',
          ),
        );
      case Error(:final failure):
        emit(ProductsState.error(failure.message));
    }
  }

  void _onSearchEvent(SearchEvent event, Emitter<ProductsState> emit) {
    if (state is! _Loaded) return;
    final current = state as _Loaded;
    final filtered = _searchProductsUsecase(event.query);
    emit(
      current.copyWith(displayedProducts: filtered, searchQuery: event.query),
    );
  }
}
