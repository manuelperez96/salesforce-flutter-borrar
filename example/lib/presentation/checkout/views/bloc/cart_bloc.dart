import 'dart:async';

import 'package:example/domain/model/basket_entity.dart';
import 'package:example/domain/repository/basket_repository.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartBloc extends Bloc<CartEvent, CartState> implements TickerProvider {
  CartBloc({
    required BasketRepository basketRepository,
  })  : _basketRepository = basketRepository,
        super(CartLoading()) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    on<CheckStatusCart>(_onCheckStatusCart);
    on<AddProductCart>(_onProductAdded);
    on<RemoveProductCart>(_onProductRemoved);
    on<IncrementQuantityProductCart>(_onIncrementProductQuantity);
    on<DecrementQuantityProductCart>(_onDecrementProductQuantity);
  }
  late AnimationController controller;

  final BasketRepository _basketRepository;

  Future<BasketEntity> _onCreateBasket() {
    return _basketRepository.createBasket();
  }

  Future<void> _onCheckStatusCart(
    CheckStatusCart event,
    Emitter<CartState> emit,
  ) async {
    late BasketEntity basket;
    final basketID = await _basketRepository.getBasketId();
    if (basketID == null) {
      basket = await _onCreateBasket();
    } else {
      try {
        basket = await _basketRepository.getBasket(basketID);
      } catch (e) {
        basket = await _onCreateBasket();
      }
    }
    emit(CartLoaded(basket));
  }

  Future<void> _onProductAdded(
    AddProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    late BasketEntity newBasket;

    if (currentState.currentCart.containsProduct(event.productId)) {
      final itemId =
          currentState.currentCart.getItemIdByProductId(event.productId);
      final oldQuantity =
          currentState.currentCart.getQuantityByProductId(event.productId);

      newBasket = await _basketRepository.updateProductQuantity(
        basketId: currentState.currentCart.basketId,
        basketItemId: itemId!,
        quantity: oldQuantity! + event.quantity,
      );
    } else {
      newBasket = await _basketRepository.addProductToBasket(
        basketId: currentState.currentCart.basketId,
        productId: event.productId,
        quantity: event.quantity,
      );
    }

    unawaited(controller.forward());

    emit(CartLoaded(newBasket));
  }

  Future<void> _onProductRemoved(
    RemoveProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final newBasket = await _basketRepository.removeProductFromBasket(
      basketId: currentState.currentCart.basketId,
      basketItemId: event.product.itemId,
      currentBasket: currentState.currentCart,
    );
    unawaited(controller.forward());
    emit(CartLoaded(newBasket));
  }

  Future<void> _onIncrementProductQuantity(
    IncrementQuantityProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final oldQuantity = currentState.currentCart
        .getQuantityByProductId(event.product.productId);

    final newBasket = await _basketRepository.updateProductQuantity(
      basketId: currentState.currentCart.basketId,
      basketItemId: event.product.itemId,
      quantity: oldQuantity! + 1,
    );
    emit(CartLoaded(newBasket));
  }

  Future<void> _onDecrementProductQuantity(
    DecrementQuantityProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final oldQuantity = currentState.currentCart
        .getQuantityByProductId(event.product.productId);

    final newBasket = await _basketRepository.updateProductQuantity(
      basketId: currentState.currentCart.basketId,
      basketItemId: event.product.itemId,
      quantity: oldQuantity! - 1,
    );
    emit(CartLoaded(newBasket));
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
