abstract class BasketRepositoryException implements Exception {
  BasketRepositoryException();
}

class CreateBasketException extends BasketRepositoryException {
  CreateBasketException();
}

class GetBasketException extends BasketRepositoryException {
  GetBasketException();
}

class AddProductToBasketException extends BasketRepositoryException {
  AddProductToBasketException();
}

class RemoveProductFromBasketException extends BasketRepositoryException {
  RemoveProductFromBasketException();
}

class UpdateProductInBasketException extends BasketRepositoryException {
  UpdateProductInBasketException();
}
