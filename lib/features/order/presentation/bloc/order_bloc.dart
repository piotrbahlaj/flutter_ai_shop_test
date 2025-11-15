import 'package:flutter_ai_shop_test/core/constants/constants.dart';
import 'package:flutter_ai_shop_test/core/utils/result.dart';
import 'package:flutter_ai_shop_test/features/order/data/models/ordered_product/ordered_product_model.dart';
import 'package:flutter_ai_shop_test/features/order/domain/usecases/parse_order_usecase.dart';
import 'package:flutter_ai_shop_test/shared/usecases/get_cached_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final GetCachedProductsUseCase _getCachedProductsUseCase;
  final ParseOrderUseCase _parseOrderUseCase;
  OrderBloc(this._getCachedProductsUseCase, this._parseOrderUseCase)
    : super(OrderState.initial()) {
    on<SubmitOrderEvent>(_onSubmitOrderEvent);
  }

  Future<void> _onSubmitOrderEvent(
    SubmitOrderEvent event,
    Emitter<OrderState> emit,
  ) async {
    emit(const OrderState.loading());

    final catalogResult = _getCachedProductsUseCase();

    if (catalogResult == null || catalogResult.isEmpty) {
      emit(const OrderState.error(Constants.emptyCatalogError));
      return;
    }

    final parseResult = await _parseOrderUseCase(
      event.userOrder,
      catalogResult,
    );

    switch (parseResult) {
      case Success(:final data):
        emit(OrderState.success(data));
      case Error(:final failure):
        emit(OrderState.error(failure.message));
    }
  }
}
