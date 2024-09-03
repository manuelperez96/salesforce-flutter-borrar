import 'dart:async';

import 'package:example/models/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/basket/basket.dart';
import 'package:sf_commerce_sdk/models/responses/basket/product_item.dart';
import 'package:sf_commerce_sdk/models/responses/product/product.dart';
import 'package:sf_commerce_sdk/repository/basket_repository.dart';
import 'package:sf_commerce_sdk/repository/product_repository.dart';

import 'cart_event.dart';
import 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> implements TickerProvider {
  late AnimationController controller;

  final BasketRepository _basketRepository;
  final ProductRepository _productRepository;

  CartBloc(
      {required BasketRepository basketRepository,
      required ProductRepository productRepository})
      : _basketRepository = basketRepository,
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

  Future<void> _onCheckStatusCart(
    CheckStatusCart event,
    Emitter<CartState> emit,
  ) async {
    emit(CartLoading());
    String? basketID = await _basketRepository.getBasketId();
    if (basketID == null) {
      print('caso 1');
      this.add(CreateCart());
    } else {
      print('caso 2');
      try {
        Basket basket = await _basketRepository.getBasket(basketID);
        print('caso 2 - $basketID');
        List<ProductCart> products = [];
        if (basket.productItems != null && basket.productItems!.length > 0) {
          List<String> itemsIDs = getItemsIDs(basket.productItems!);
          print('caso 2 - ${itemsIDs}');
          List<Product> productList =
              await _productRepository.getProducts(itemsIDs);

          print('caso 2 - ${productList}');
          productList.forEach(
            (product) {
              products.add(ProductCart(
                  product: product,
                  quantity: getQuantity(product.id, basket.productItems!)));
            },
          );
          print('caso 2 - ${products}');
        }
        emit(CartLoaded(products, basket));
      } catch (e) {
        print('caso 3');
        this.add(CreateCart());
      }
    }
  }

  Future<void> _onProductModifyQuantity(
    ModifyQuantityProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    Basket newBasket;

    ProductCart productCart = currentState
        .products[IndexOfProduct(event.product, currentState.products)!];

    String itemId =
        findItemIdFromBasket(event.product, currentState.currentCart);

    if (event.increase)
      productCart.increaseQuantity();
    else
      productCart.decreaseQuantity();

    if (productCart.quantity == 0) {
      currentState.products.remove(productCart);

      newBasket = await _basketRepository.removeProductFromBasket(
          basketId: currentState.currentCart.basketId, basketItemId: itemId);
    } else {
      newBasket = await _basketRepository.updateProductInBasket(
          basketId: currentState.currentCart.basketId,
          basketItemId: itemId,
          quantity: productCart.quantity);
    }

    emit(CartLoaded(currentState.products, newBasket));
  }

  Future<void> _onCreate(CreateCart event, Emitter<CartState> emit) async {
    Basket basket = await _basketRepository.createBasket();
    emit(CartLoaded([], basket));
  }

  Future<void> _onProductAdded(
    AddProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    Basket newBasket;

    int? indexOfProduct = IndexOfProduct(event.product, currentState.products);

    List<ProductCart> updatedProducts =
        List<ProductCart>.from(currentState.products);

    if (indexOfProduct != null) {
      updatedProducts[indexOfProduct].addQuantity(event.quantity);

      newBasket = await _basketRepository.updateProductInBasket(
          basketId: currentState.currentCart.basketId,
          basketItemId:
              currentState.currentCart.productItems![indexOfProduct].itemId,
          quantity: updatedProducts[indexOfProduct].quantity);
    } else {
      updatedProducts
          .add(ProductCart(product: event.product, quantity: event.quantity));

      newBasket = await _basketRepository.addProductToBasket(
          basketId: currentState.currentCart.basketId,
          productId: event.product.id,
          quantity: event.quantity);
    }

    controller.forward();

    emit(CartLoaded(updatedProducts, newBasket));
  }

  Future<void> _onProductRemoved(
    RemoveProductCart event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;

    String itemIdToRemove =
        findItemIdFromBasket(event.product, currentState.currentCart);

    Basket newBasket = await _basketRepository.removeProductFromBasket(
        basketId: currentState.currentCart.basketId,
        basketItemId: itemIdToRemove);

    final updatedProducts = List<ProductCart>.from(currentState.products)
      ..remove(IndexOfProduct(event.product, currentState.products));
    controller.forward();
    emit(CartLoaded(updatedProducts, newBasket));
  }

  @override
  Ticker createTicker(TickerCallback onTick) {
    return Ticker(onTick);
  }

  int? IndexOfProduct(Product product, List<ProductCart> productsList) {
    for (int i = 0; i < productsList.length; i++) {
      if (product.id == productsList[i].product.id) return i;
    }
    return null;
  }

  String findItemIdFromBasket(Product product, Basket basket) {
    String itemId = '';
    basket.productItems!.forEach(
      (element) {
        if (element.productId == product.id) {
          itemId = element.itemId;
        }
      },
    );
    return itemId;
  }

  List<String> getItemsIDs(List<ProductItem> productItems) {
    List<String> ids = [];
    productItems.forEach(
      (element) => ids.add(element.productId),
    );
    return ids;
  }

  int getQuantity(String id, List<ProductItem> productList) {
    int quantity = 1; //by default
    productList.forEach(
      (element) {
        if (element.productId == id) quantity = element.quantity;
      },
    );
    return quantity;
  }
}
