import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template basket_repository_exception}
/// A base class for exceptions related to basket repository operations.
///
/// This class extends [BaseApiException] and serves as a common base for
/// all exceptions that can occur in the basket repository.
/// {@endtemplate}
abstract class BasketRepositoryException extends BaseApiException {
  /// {@macro basket_repository_exception}
  const BasketRepositoryException([super.message]);
}

/// {@template create_basket_exception}
/// Exception thrown when there is an error creating a basket.
/// {@endtemplate}
class CreateBasketException extends BasketRepositoryException {
  /// {@macro create_basket_exception}
  const CreateBasketException([super.message]);
}

/// {@template get_basket_exception}
/// Exception thrown when there is an error retrieving a basket.
/// {@endtemplate}
class GetBasketException extends BasketRepositoryException {
  /// {@macro get_basket_exception}
  const GetBasketException([super.message]);
}

/// {@template add_product_to_basket_exception}
/// Exception thrown when there is an error adding a product to the basket.
/// {@endtemplate}
class AddProductToBasketException extends BasketRepositoryException {
  /// {@macro add_product_to_basket_exception}
  const AddProductToBasketException([super.message]);
}

/// {@template remove_product_from_basket_exception}
/// Exception thrown when there is an error removing a product from the basket.
/// {@endtemplate}
class RemoveProductFromBasketException extends BasketRepositoryException {
  /// {@macro remove_product_from_basket_exception}
  const RemoveProductFromBasketException([super.message]);
}

/// {@template update_product_in_basket_exception}
/// Exception thrown when there is an error updating a product in the basket.
/// {@endtemplate}
class UpdateProductInBasketException extends BasketRepositoryException {
  /// {@macro update_product_in_basket_exception}
  const UpdateProductInBasketException([super.message]);
}

/// {@template add_payment_method_basket_exception}
/// Exception thrown when there is an error adding a payment method to 
/// the basket.
/// {@endtemplate}
class AddPaymentMethodBasketException extends BasketRepositoryException {
  /// {@macro add_payment_method_basket_exception}
  const AddPaymentMethodBasketException([super.message]);
}

/// {@template add_shipment_basket_exception}
/// Exception thrown when there is an error adding a shipment to the basket.
/// {@endtemplate}
class AddShipmentBasketException extends BasketRepositoryException {
  /// {@macro add_shipment_basket_exception}
  const AddShipmentBasketException([super.message]);
}

/// {@template add_billing_address_basket_exception}
/// Exception thrown when there is an error adding a billing address to 
/// the basket.
/// {@endtemplate}
class AddBillingAddressBasketException extends BasketRepositoryException {
  /// {@macro add_billing_address_basket_exception}
  const AddBillingAddressBasketException([super.message]);
}
