import 'dart:async';

import 'package:example/models/product_cart.dart';
import 'package:example/presentation/checkout/views/bloc/cart_event.dart';
import 'package:example/presentation/checkout/views/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/models/responses/basket/product_item.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/repository/basket_repository.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';

class CartBloc extends Bloc<CartEvent, CartState> implements TickerProvider {
  CartBloc({
    required BasketRepository basketRepository,
    required ProductRepository productRepository,
  })  : _basketRepository = basketRepository,
        _productRepository = productRepository,
        super(CartInitial()) {
    controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    on<AddProductCart>(_onProductAdded);
    on<CreateCart>(_onCreate);
    on<RemoveProductCart>(_onProductRemoved);
    on<ModifyQuantityProductCart>(_onProductModifyQuantity);
    on<CheckStatusCart>(_onCheckStatusCart);
  }
  late AnimationController controller;

  final BasketRepository _basketRepository;
  final ProductRepository _productRepository;

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
        final products = <ProductCart>[];
        if (basket.productItems != null && basket.productItems!.isNotEmpty) {
          final itemsIDs = getItemsIDs(basket.productItems!);
          final productList = await _productRepository.getProducts(itemsIDs);

          for (final product in productList) {
            products.add(
              ProductCart(
                product: product,
                quantity: getQuantity(product.id, basket.productItems!),
              ),
            );
          }
        }
        emit(CartLoaded(products, basket));
      } catch (e) {
        add(CreateCart());
      }
    }
  }

  Future<void> _onProductModifyQuantity(
    ModifyQuantityProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    Basket newBasket;

    final productCart = currentState
        .products[indexOfProduct(event.product, currentState.products)!];

    final itemId =
        findItemIdFromBasket(event.product, currentState.currentCart);

    if (event.increase) {
      productCart.increaseQuantity();
    } else {
      productCart.decreaseQuantity();
    }

    if (productCart.quantity == 0) {
      currentState.products.remove(productCart);

      newBasket = await _basketRepository.removeProductFromBasket(
        basketId: currentState.currentCart.basketId,
        basketItemId: itemId,
      );
    } else {
      newBasket = await _basketRepository.updateProductInBasket(
        basketId: currentState.currentCart.basketId,
        basketItemId: itemId,
        quantity: productCart.quantity,
      );
    }

    emit(CartLoaded(currentState.products, newBasket));
  }

  Future<void> _onCreate(CreateCart event, Emitter<CartState> emit) async {
    final basket = await _basketRepository.createBasket();
    emit(CartLoaded([], basket));
  }

  Future<void> _onProductAdded(
    AddProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    Basket newBasket;

    final indexOfCurrentProduct =
        indexOfProduct(event.product, currentState.products);

    final updatedProducts = List<ProductCart>.from(currentState.products);

    if (indexOfCurrentProduct != null) {
      updatedProducts[indexOfCurrentProduct].addQuantity(event.quantity);

      newBasket = await _basketRepository.updateProductInBasket(
        basketId: currentState.currentCart.basketId,
        basketItemId: currentState
            .currentCart.productItems![indexOfCurrentProduct].itemId,
        quantity: updatedProducts[indexOfCurrentProduct].quantity,
      );
    } else {
      updatedProducts
          .add(ProductCart(product: event.product, quantity: event.quantity));

      newBasket = await _basketRepository.addProductToBasket(
        basketId: currentState.currentCart.basketId,
        productId: event.product.id,
        quantity: event.quantity,
      );
    }
    unawaited(controller.forward());

    emit(CartLoaded(updatedProducts, newBasket));
  }

  Future<void> _onProductRemoved(
    RemoveProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    final itemIdToRemove =
        findItemIdFromBasket(event.product, currentState.currentCart);

    final newBasket = await _basketRepository.removeProductFromBasket(
      basketId: currentState.currentCart.basketId,
      basketItemId: itemIdToRemove,
    );

    final updatedProducts = List<ProductCart>.from(currentState.products)
      ..removeAt(indexOfProduct(event.product, currentState.products)!);
    unawaited(controller.forward());
    emit(CartLoaded(updatedProducts, newBasket));
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }

  int? indexOfProduct(Product product, List<ProductCart> productsList) {
    for (var i = 0; i < productsList.length; i++) {
      if (product.id == productsList[i].product.id) return i;
    }
    return null;
  }

  String findItemIdFromBasket(Product product, Basket basket) {
    var itemId = '';
    for (final element in basket.productItems!) {
      if (element.productId == product.id) {
        itemId = element.itemId;
      }
    }
    return itemId;
  }

  List<String> getItemsIDs(List<ProductItem> productItems) {
    final ids = <String>[];
    for (final element in productItems) {
      ids.add(element.productId);
    }
    return ids;
  }

  int getQuantity(String id, List<ProductItem> productList) {
    var quantity = 1; //by default
    for (final element in productList) {
      if (element.productId == id) quantity = element.quantity;
    }
    return quantity;
  }
}
