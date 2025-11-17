part of 'products_bloc.dart';

@freezed
class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.fetchProducts() = FetchProductsEvent;
  const factory ProductsEvent.search(String query) = SearchEvent;
}
