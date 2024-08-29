import 'package:sf_commerce_sdk/models/exception/base_api_exception.dart';

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
