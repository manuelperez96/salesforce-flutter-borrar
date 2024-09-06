import 'dart:async';

import 'package:example/domain/model/basket_entity.dart';
import 'package:example/domain/repository/basket_repository.dart';
import 'package:example/presentation/basket/bloc/cart_event.dart';
import 'package:example/presentation/basket/bloc/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sf_commerce_sdk/models/responses/order/ing_address.dart';
import 'package:sf_commerce_sdk/models/responses/payment/payment_instrument.dart';

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
    on<AddBillingAddress>(_onAddBillingAddress);
    on<AddPaymentMethod>(_onAddPaymentMethod);
    on<AddShipment>(_onAddShipment);
    on<CreateOrder>(_onCreateOrder);
  }
  late AnimationController controller;

  final BasketRepository _basketRepository;

  Future<BasketEntity> _onCreateBasket() {
    return _basketRepository.createBasket();
  }

  Future<void> _onCreateOrder(
    CreateOrder event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    final statusCode = await _basketRepository.createOrder(
      basketId: currentState.currentCart.basketId,
    );
    if (statusCode == 200) {
      emit(CartSuccessOrder());
    }
  }

  Future<void> _onAddBillingAddress(
    AddBillingAddress event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    final basket = await _basketRepository.addBillingAddressBasket(
      basketId: currentState.currentCart.basketId,
      //billAddress: event.ingAddress
      billAddress: IngAddress.fromJson(
        {
          'firstName': 'John',
          'lastName': 'Doe',
          'address1': '415 Mission St',
          'city': 'Jena',
          'postalCode': '94105',
          'stateCode': 'CA',
          'countryCode': 'US',
        },
      ),
    );
    emit(CartLoaded(basket));
  }

  Future<void> _onAddPaymentMethod(
    AddPaymentMethod event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    final basket = await _basketRepository.addPaymentMethodBasket(
      basketId: currentState.currentCart.basketId,
      paymentMethod: PaymentInstrument.fromJson(
        {
          'amount': 9.99,
          'paymentCard': {
            'expirationYear': 1990,
            'expirationMonth': 7,
            'validFromMonth': 8,
            'validFromYear': 2007,
            'issueNumber': 'i117',
            'maskedNumber': '*********1234',
            'holder': 'Miller',
            'cardType': 'Visa',
          },
          'paymentMethodId': 'CREDIT_CARD',
        },
      ),
    );
    emit(CartLoaded(basket));
  }

  Future<void> _onAddShipment(
    AddShipment event,
    Emitter<CartState> emit,
  ) async {
    final currentState = state as CartLoaded;
    final basket = await _basketRepository.addShipmentBasket(
      basketId: currentState.currentCart.basketId,
    );
    emit(CartLoaded(basket));
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
