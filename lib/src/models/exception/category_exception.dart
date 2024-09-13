import 'package:sf_commerce_sdk/src/models/exception/base_api_exception.dart';

abstract class CategoryRepositoryException extends BaseApiException {
  const CategoryRepositoryException([super.message]);
}

class GetCategoriesException extends CategoryRepositoryException {
  const GetCategoriesException([super.message]);
}
