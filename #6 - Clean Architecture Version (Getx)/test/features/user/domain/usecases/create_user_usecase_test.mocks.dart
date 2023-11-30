// Mocks generated by Mockito 5.4.3 from annotations
// in clean_architecture_getx/test/features/user/domain/usecases/create_user_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:clean_architecture_getx/features/user/data/models/user.dart'
    as _i5;
import 'package:clean_architecture_getx/features/user/domain/entities/user_entity.dart'
    as _i6;
import 'package:clean_architecture_getx/features/user/domain/repositories/user_repository.dart'
    as _i3;
import 'package:dartz/dartz.dart' as _i2;
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

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserRepository extends _i1.Mock implements _i3.UserRepository {
  MockUserRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<String, List<_i5.User>>> getUsers({
    _i6.Gender? gender,
    _i6.UserStatus? status,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [],
          {
            #gender: gender,
            #status: status,
          },
        ),
        returnValue: _i4.Future<_i2.Either<String, List<_i5.User>>>.value(
            _FakeEither_0<String, List<_i5.User>>(
          this,
          Invocation.method(
            #getUsers,
            [],
            {
              #gender: gender,
              #status: status,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<String, List<_i5.User>>>);

  @override
  _i4.Future<_i2.Either<String, bool>> createUser(_i5.User? user) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUser,
          [user],
        ),
        returnValue: _i4.Future<_i2.Either<String, bool>>.value(
            _FakeEither_0<String, bool>(
          this,
          Invocation.method(
            #createUser,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, bool>>);

  @override
  _i4.Future<_i2.Either<String, bool>> updateUser(_i5.User? user) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUser,
          [user],
        ),
        returnValue: _i4.Future<_i2.Either<String, bool>>.value(
            _FakeEither_0<String, bool>(
          this,
          Invocation.method(
            #updateUser,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, bool>>);

  @override
  _i4.Future<_i2.Either<String, bool>> deleteUser(_i5.User? user) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUser,
          [user],
        ),
        returnValue: _i4.Future<_i2.Either<String, bool>>.value(
            _FakeEither_0<String, bool>(
          this,
          Invocation.method(
            #deleteUser,
            [user],
          ),
        )),
      ) as _i4.Future<_i2.Either<String, bool>>);
}