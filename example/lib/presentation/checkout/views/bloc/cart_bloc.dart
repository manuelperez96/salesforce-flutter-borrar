import 'dart:async';

import 'package:example/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> implements TickerProvider {
  late AnimationController controller;

  CartBloc() : super(CartInitial()) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    on<AddProductCart>(_onProductAdded);
    on<RemoveProductCart>(_onProductRemoved);
  }

  Future<void> _onProductAdded(
      AddProductCart event, Emitter<CartState> emit) async {
    final currentState = state;
    emit(CartLoading());

    if (currentState is CartLoaded) {
      List<ProductModel> updatedProducts =
          List<ProductModel>.from(currentState.products);
      for (var i = 0; i < event.quantity; i++) {
        updatedProducts = List<ProductModel>.from(updatedProducts)
          ..add(event.product);
      }
      controller.forward();

      emit(CartLoaded(updatedProducts));
    } else {
      emit(CartLoaded([event.product]));
    }
  }

  Future<void> _onProductRemoved(
      RemoveProductCart event, Emitter<CartState> emit) async {
    final currentState = state;
    emit(CartLoading());

    if (currentState is CartLoaded) {
      final updatedProducts = List<ProductModel>.from(currentState.products)
        ..remove(event.product);
      controller.forward();
      emit(CartLoaded(updatedProducts));
    }
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }
}
