import 'dart:async';

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
        super(CartInitial()) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    on<CreateCart>(_onCreate);
    on<CheckStatusCart>(_onCheckStatusCart);
    on<AddProductCart>(_onProductAdded);
    on<RemoveProductCart>(_onProductRemoved);
    on<IncrementQuantityProductCart>(_onIncrementProductQuantity);
    on<DecrementQuantityProductCart>(_onDecrementProductQuantity);
  }
  late AnimationController controller;

  final BasketRepository _basketRepository;

  Future<void> _onCreate(CreateCart event, Emitter<CartState> emit) async {
    final basket = await _basketRepository.createBasket();
    emit(CartLoaded(basket));
  }

  Future<void> _onCheckStatusCart(
    CheckStatusCart event,
    Emitter<CartState> emit,
  ) async {
    emit(CartLoading());
    final basketID = await _basketRepository.getBasketId();
    if (basketID == null) {
      add(CreateCart());
    } else {
      try {
        final basket = await _basketRepository.getBasket(basketID);
        emit(CartLoaded(basket));
      } catch (e) {
        add(CreateCart());
      }
    }
  }

  Future<void> _onProductAdded(
    AddProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final newBasket = await _basketRepository.addProductToBasket(
      basketId: currentState.currentCart.basketId,
      productId: event.productId,
      quantity: event.quantity,
      currentBasket: currentState.currentCart,
    );

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

    final newBasket = await _basketRepository.incrementProductQuantity(
      basketId: currentState.currentCart.basketId,
      basketItemId: event.product.itemId,
      currentBasket: currentState.currentCart,
    );
    emit(CartLoaded(newBasket));
  }

  Future<void> _onDecrementProductQuantity(
    DecrementQuantityProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final newBasket = await _basketRepository.decrementProductQuantity(
      basketId: currentState.currentCart.basketId,
      basketItemId: event.product.itemId,
      currentBasket: currentState.currentCart,
    );
    emit(CartLoaded(newBasket));
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
