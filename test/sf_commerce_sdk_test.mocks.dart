// Mocks generated by Mockito 5.4.4 from annotations
// in sf_commerce_sdk/test/sf_commerce_sdk_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dio/dio.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;
import 'package:sf_commerce_sdk/models/responses/category/category.dart' as _i9;
import 'package:sf_commerce_sdk/models/responses/product/product.dart' as _i3;
import 'package:sf_commerce_sdk/models/responses/product/product_by_category.dart'
    as _i11;
import 'package:sf_commerce_sdk/models/sf_commerce_config.dart' as _i5;
import 'package:sf_commerce_sdk/repository/auth/auth_repository.dart' as _i4;
import 'package:sf_commerce_sdk/repository/category_repository.dart' as _i8;
import 'package:sf_commerce_sdk/repository/product_repository.dart' as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeDio_0 extends _i1.SmartFake implements _i2.Dio {
  _FakeDio_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeProduct_1 extends _i1.SmartFake implements _i3.Product {
  _FakeProduct_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i4.AuthRepository {
  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);

  @override
  _i5.SfCommerceConfig get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
        returnValueForMissingStub: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
      ) as _i5.SfCommerceConfig);

  @override
  _i7.Future<bool> checkStatus() => (super.noSuchMethod(
        Invocation.method(
          #checkStatus,
          [],
        ),
        returnValue: _i7.Future<bool>.value(false),
        returnValueForMissingStub: _i7.Future<bool>.value(false),
      ) as _i7.Future<bool>);

  @override
  _i7.Future<void> anonymousLogin() => (super.noSuchMethod(
        Invocation.method(
          #anonymousLogin,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [CategoryRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockCategoryRepository extends _i1.Mock
    implements _i8.CategoryRepository {
  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);

  @override
  _i5.SfCommerceConfig get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
        returnValueForMissingStub: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
      ) as _i5.SfCommerceConfig);

  @override
  _i7.Future<List<_i9.Category>> getRootCategories() => (super.noSuchMethod(
        Invocation.method(
          #getRootCategories,
          [],
        ),
        returnValue: _i7.Future<List<_i9.Category>>.value(<_i9.Category>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i9.Category>>.value(<_i9.Category>[]),
      ) as _i7.Future<List<_i9.Category>>);

  @override
  _i7.Future<List<_i9.Category>> getCategoriesByUrl(String? url) =>
      (super.noSuchMethod(
        Invocation.method(
          #getCategoriesByUrl,
          [url],
        ),
        returnValue: _i7.Future<List<_i9.Category>>.value(<_i9.Category>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i9.Category>>.value(<_i9.Category>[]),
      ) as _i7.Future<List<_i9.Category>>);
}

/// A class which mocks [ProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRepository extends _i1.Mock implements _i10.ProductRepository {
  @override
  _i2.Dio get dio => (super.noSuchMethod(
        Invocation.getter(#dio),
        returnValue: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
        returnValueForMissingStub: _FakeDio_0(
          this,
          Invocation.getter(#dio),
        ),
      ) as _i2.Dio);

  @override
  _i5.SfCommerceConfig get config => (super.noSuchMethod(
        Invocation.getter(#config),
        returnValue: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
        returnValueForMissingStub: _i6.dummyValue<_i5.SfCommerceConfig>(
          this,
          Invocation.getter(#config),
        ),
      ) as _i5.SfCommerceConfig);

  @override
  _i7.Future<List<_i3.Product>> getProducts(List<String>? ids) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProducts,
          [ids],
        ),
        returnValue: _i7.Future<List<_i3.Product>>.value(<_i3.Product>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i3.Product>>.value(<_i3.Product>[]),
      ) as _i7.Future<List<_i3.Product>>);

  @override
  _i7.Future<_i3.Product> getProduct(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getProduct,
          [id],
        ),
        returnValue: _i7.Future<_i3.Product>.value(_FakeProduct_1(
          this,
          Invocation.method(
            #getProduct,
            [id],
          ),
        )),
        returnValueForMissingStub: _i7.Future<_i3.Product>.value(_FakeProduct_1(
          this,
          Invocation.method(
            #getProduct,
            [id],
          ),
        )),
      ) as _i7.Future<_i3.Product>);

  @override
  _i7.Future<List<_i11.ProductByCategory>> getProductByCategory(
          String? category) =>
      (super.noSuchMethod(
        Invocation.method(
          #getProductByCategory,
          [category],
        ),
        returnValue: _i7.Future<List<_i11.ProductByCategory>>.value(
            <_i11.ProductByCategory>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i11.ProductByCategory>>.value(
                <_i11.ProductByCategory>[]),
      ) as _i7.Future<List<_i11.ProductByCategory>>);
}
