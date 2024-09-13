import 'package:sf_commerce_sdk/sf_commerce_sdk.dart';

/// {@template category_repository_exception}
/// A base class for exceptions related to category repository operations.
///
/// This class extends [BaseApiException] and serves as a common base for
/// all exceptions that can occur in the category repository.
/// {@endtemplate}
abstract class CategoryRepositoryException extends BaseApiException {
  /// {@macro category_repository_exception}
  const CategoryRepositoryException([super.message]);
}

/// {@template get_categories_exception}
/// Exception thrown when there is an error retrieving categories.
/// {@endtemplate}
class GetCategoriesException extends CategoryRepositoryException {
  /// {@macro get_categories_exception}
  const GetCategoriesException([super.message]);
}
