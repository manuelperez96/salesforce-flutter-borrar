import 'package:sf_commerce_sdk/src/models/exception/base_api_exception.dart';

abstract class OrderRepositoryException extends BaseApiException {
  const OrderRepositoryException([super.message]);
}

class CreateOrderException extends OrderRepositoryException {
  const CreateOrderException([super.message]);
}

class GetOrderException extends OrderRepositoryException {
  const GetOrderException([super.message]);
}
