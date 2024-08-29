abstract class BasketRepositoryException implements Exception {
  const BasketRepositoryException();
}

class CreateBasketException extends BasketRepositoryException {
  const CreateBasketException();
}

class GetBasketException extends BasketRepositoryException {
  const GetBasketException();
}

class AddProductToBasketException extends BasketRepositoryException {
  const AddProductToBasketException();
}

class RemoveProductFromBasketException extends BasketRepositoryException {
  const RemoveProductFromBasketException();
}

class UpdateProductInBasketException extends BasketRepositoryException {
  const UpdateProductInBasketException();
}
