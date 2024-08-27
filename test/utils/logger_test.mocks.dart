// Mocks generated by Mockito 5.4.4 from annotations
// in sf_commerce_sdk/test/utils/logger_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:dio/src/dio_exception.dart' as _i6;
import 'package:dio/src/dio_mixin.dart' as _i2;
import 'package:dio/src/options.dart' as _i4;
import 'package:dio/src/response.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeInterceptorState_0<T> extends _i1.SmartFake
    implements _i2.InterceptorState<T> {
  _FakeInterceptorState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [RequestInterceptorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestInterceptorHandler extends _i1.Mock
    implements _i2.RequestInterceptorHandler {
  @override
  _i3.Future<_i2.InterceptorState<dynamic>> get future => (super.noSuchMethod(
        Invocation.getter(#future),
        returnValue: _i3.Future<_i2.InterceptorState<dynamic>>.value(
            _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
        returnValueForMissingStub:
            _i3.Future<_i2.InterceptorState<dynamic>>.value(
                _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
      ) as _i3.Future<_i2.InterceptorState<dynamic>>);

  @override
  bool get isCompleted => (super.noSuchMethod(
        Invocation.getter(#isCompleted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void next(_i4.RequestOptions? requestOptions) => super.noSuchMethod(
        Invocation.method(
          #next,
          [requestOptions],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resolve(
    _i5.Response<dynamic>? response, [
    bool? callFollowingResponseInterceptor = false,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #resolve,
          [
            response,
            callFollowingResponseInterceptor,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void reject(
    _i6.DioException? error, [
    bool? callFollowingErrorInterceptor = false,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #reject,
          [
            error,
            callFollowingErrorInterceptor,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ErrorInterceptorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockErrorInterceptorHandler extends _i1.Mock
    implements _i2.ErrorInterceptorHandler {
  @override
  _i3.Future<_i2.InterceptorState<dynamic>> get future => (super.noSuchMethod(
        Invocation.getter(#future),
        returnValue: _i3.Future<_i2.InterceptorState<dynamic>>.value(
            _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
        returnValueForMissingStub:
            _i3.Future<_i2.InterceptorState<dynamic>>.value(
                _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
      ) as _i3.Future<_i2.InterceptorState<dynamic>>);

  @override
  bool get isCompleted => (super.noSuchMethod(
        Invocation.getter(#isCompleted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void next(_i6.DioException? error) => super.noSuchMethod(
        Invocation.method(
          #next,
          [error],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resolve(_i5.Response<dynamic>? response) => super.noSuchMethod(
        Invocation.method(
          #resolve,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void reject(_i6.DioException? error) => super.noSuchMethod(
        Invocation.method(
          #reject,
          [error],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [ResponseInterceptorHandler].
///
/// See the documentation for Mockito's code generation for more information.
class MockResponseInterceptorHandler extends _i1.Mock
    implements _i2.ResponseInterceptorHandler {
  @override
  _i3.Future<_i2.InterceptorState<dynamic>> get future => (super.noSuchMethod(
        Invocation.getter(#future),
        returnValue: _i3.Future<_i2.InterceptorState<dynamic>>.value(
            _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
        returnValueForMissingStub:
            _i3.Future<_i2.InterceptorState<dynamic>>.value(
                _FakeInterceptorState_0<dynamic>(
          this,
          Invocation.getter(#future),
        )),
      ) as _i3.Future<_i2.InterceptorState<dynamic>>);

  @override
  bool get isCompleted => (super.noSuchMethod(
        Invocation.getter(#isCompleted),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void next(_i5.Response<dynamic>? response) => super.noSuchMethod(
        Invocation.method(
          #next,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void resolve(_i5.Response<dynamic>? response) => super.noSuchMethod(
        Invocation.method(
          #resolve,
          [response],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void reject(
    _i6.DioException? error, [
    bool? callFollowingErrorInterceptor = false,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #reject,
          [
            error,
            callFollowingErrorInterceptor,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
