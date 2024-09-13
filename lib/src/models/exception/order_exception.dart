import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template order_repository_exception}
/// A base class for exceptions related to order repository operations.
///
/// This class extends [BaseApiException] and serves as a common base for
/// all exceptions that can occur in the order repository.
/// {@endtemplate}
abstract class OrderRepositoryException extends BaseApiException {
  /// {@macro order_repository_exception}
  const OrderRepositoryException([super.message]);
}

/// {@template create_order_exception}
/// Exception thrown when there is an error creating an order.
/// {@endtemplate}
class CreateOrderException extends OrderRepositoryException {
  /// {@macro create_order_exception}
  const CreateOrderException([super.message]);
}

/// {@template get_order_exception}
/// Exception thrown when there is an error retrieving an order.
/// {@endtemplate}
class GetOrderException extends OrderRepositoryException {
  /// {@macro get_order_exception}
  const GetOrderException([super.message]);
}
