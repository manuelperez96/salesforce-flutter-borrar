import 'package:sf_commerce_sdk/src/models/exception/base_api_exception.dart';

abstract class BasketRepositoryException extends BaseApiException {
  const BasketRepositoryException([super.message]);
}

class CreateBasketException extends BasketRepositoryException {
  const CreateBasketException([super.message]);
}

class GetBasketException extends BasketRepositoryException {
  const GetBasketException([super.message]);
}

class AddProductToBasketException extends BasketRepositoryException {
  const AddProductToBasketException([super.message]);
}

class RemoveProductFromBasketException extends BasketRepositoryException {
  const RemoveProductFromBasketException([super.message]);
}

class UpdateProductInBasketException extends BasketRepositoryException {
  const UpdateProductInBasketException([super.message]);
}

class AddPaymentMethodBasketException extends BasketRepositoryException {
  const AddPaymentMethodBasketException([super.message]);
}

class AddShipmentBasketException extends BasketRepositoryException {
  const AddShipmentBasketException([super.message]);
}

class AddBillingAddressBasketException extends BasketRepositoryException {
  const AddBillingAddressBasketException([super.message]);
}
