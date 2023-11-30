// Mocks generated by Mockito 5.4.3 from annotations
// in clean_architecture_getx/test/features/post/presentation/controller/post_controller_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i9;
import 'dart:ui' as _i15;

import 'package:clean_architecture_getx/common/controller/base_controller.dart'
    as _i12;
import 'package:clean_architecture_getx/features/post/data/models/post.dart'
    as _i10;
import 'package:clean_architecture_getx/features/post/domain/repositories/post_repository.dart'
    as _i2;
import 'package:clean_architecture_getx/features/post/domain/usecases/create_post_usecase.dart'
    as _i6;
import 'package:clean_architecture_getx/features/post/domain/usecases/delete_post_usecase.dart'
    as _i8;
import 'package:clean_architecture_getx/features/post/domain/usecases/get_posts_usecase.dart'
    as _i5;
import 'package:clean_architecture_getx/features/post/domain/usecases/update_post_usecase.dart'
    as _i7;
import 'package:clean_architecture_getx/features/post/presentation/controller/post_controller.dart'
    as _i11;
import 'package:clean_architecture_getx/features/user/data/models/user.dart'
    as _i13;
import 'package:dartz/dartz.dart' as _i3;
import 'package:get/get.dart' as _i4;
import 'package:get/get_state_manager/src/simple/list_notifier.dart' as _i14;
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

class _FakePostRepository_0 extends _i1.SmartFake
    implements _i2.PostRepository {
  _FakePostRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRxInt_2 extends _i1.SmartFake implements _i4.RxInt {
  _FakeRxInt_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeGetPostsUseCase_3 extends _i1.SmartFake
    implements _i5.GetPostsUseCase {
  _FakeGetPostsUseCase_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeCreatePostUseCase_4 extends _i1.SmartFake
    implements _i6.CreatePostUseCase {
  _FakeCreatePostUseCase_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUpdatePostUseCase_5 extends _i1.SmartFake
    implements _i7.UpdatePostUseCase {
  _FakeUpdatePostUseCase_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeDeletePostUseCase_6 extends _i1.SmartFake
    implements _i8.DeletePostUseCase {
  _FakeDeletePostUseCase_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInternalFinalCallback_7<T> extends _i1.SmartFake
    implements _i4.InternalFinalCallback<T> {
  _FakeInternalFinalCallback_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRxStatus_8 extends _i1.SmartFake implements _i4.RxStatus {
  _FakeRxStatus_8(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRx_9<T> extends _i1.SmartFake implements _i4.Rx<T> {
  _FakeRx_9(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetPostsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockGetPostsUseCase extends _i1.Mock implements _i5.GetPostsUseCase {
  MockGetPostsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostRepository get postRepository => (super.noSuchMethod(
        Invocation.getter(#postRepository),
        returnValue: _FakePostRepository_0(
          this,
          Invocation.getter(#postRepository),
        ),
      ) as _i2.PostRepository);

  @override
  _i9.Future<_i3.Either<String, List<_i10.Post>>> call(
          _i5.GetPostsParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i3.Either<String, List<_i10.Post>>>.value(
            _FakeEither_1<String, List<_i10.Post>>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i3.Either<String, List<_i10.Post>>>);
}

/// A class which mocks [CreatePostUseCase].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockCreatePostUseCase extends _i1.Mock implements _i6.CreatePostUseCase {
  MockCreatePostUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostRepository get postRepository => (super.noSuchMethod(
        Invocation.getter(#postRepository),
        returnValue: _FakePostRepository_0(
          this,
          Invocation.getter(#postRepository),
        ),
      ) as _i2.PostRepository);

  @override
  _i9.Future<_i3.Either<String, bool>> call(_i6.CreatePostParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i3.Either<String, bool>>.value(
            _FakeEither_1<String, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i3.Either<String, bool>>);
}

/// A class which mocks [UpdatePostUseCase].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockUpdatePostUseCase extends _i1.Mock implements _i7.UpdatePostUseCase {
  MockUpdatePostUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostRepository get postRepository => (super.noSuchMethod(
        Invocation.getter(#postRepository),
        returnValue: _FakePostRepository_0(
          this,
          Invocation.getter(#postRepository),
        ),
      ) as _i2.PostRepository);

  @override
  _i9.Future<_i3.Either<String, bool>> call(_i7.UpdatePostParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i3.Either<String, bool>>.value(
            _FakeEither_1<String, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i3.Either<String, bool>>);
}

/// A class which mocks [DeletePostUseCase].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockDeletePostUseCase extends _i1.Mock implements _i8.DeletePostUseCase {
  MockDeletePostUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.PostRepository get postRepository => (super.noSuchMethod(
        Invocation.getter(#postRepository),
        returnValue: _FakePostRepository_0(
          this,
          Invocation.getter(#postRepository),
        ),
      ) as _i2.PostRepository);

  @override
  _i9.Future<_i3.Either<String, bool>> call(_i8.DeletePostParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i9.Future<_i3.Either<String, bool>>.value(
            _FakeEither_1<String, bool>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i9.Future<_i3.Either<String, bool>>);
}

/// A class which mocks [PostController].
///
/// See the documentation for Mockito's code generation for more information.
class MockPostController extends _i1.Mock implements _i11.PostController {
  MockPostController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.RxInt get postLength => (super.noSuchMethod(
        Invocation.getter(#postLength),
        returnValue: _FakeRxInt_2(
          this,
          Invocation.getter(#postLength),
        ),
      ) as _i4.RxInt);

  @override
  set postLength(_i4.RxInt? _postLength) => super.noSuchMethod(
        Invocation.setter(
          #postLength,
          _postLength,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.GetPostsUseCase get getPostsUseCase => (super.noSuchMethod(
        Invocation.getter(#getPostsUseCase),
        returnValue: _FakeGetPostsUseCase_3(
          this,
          Invocation.getter(#getPostsUseCase),
        ),
      ) as _i5.GetPostsUseCase);

  @override
  _i6.CreatePostUseCase get createPostUseCase => (super.noSuchMethod(
        Invocation.getter(#createPostUseCase),
        returnValue: _FakeCreatePostUseCase_4(
          this,
          Invocation.getter(#createPostUseCase),
        ),
      ) as _i6.CreatePostUseCase);

  @override
  _i7.UpdatePostUseCase get updatePostUseCase => (super.noSuchMethod(
        Invocation.getter(#updatePostUseCase),
        returnValue: _FakeUpdatePostUseCase_5(
          this,
          Invocation.getter(#updatePostUseCase),
        ),
      ) as _i7.UpdatePostUseCase);

  @override
  _i8.DeletePostUseCase get deletePostUseCase => (super.noSuchMethod(
        Invocation.getter(#deletePostUseCase),
        returnValue: _FakeDeletePostUseCase_6(
          this,
          Invocation.getter(#deletePostUseCase),
        ),
      ) as _i8.DeletePostUseCase);

  @override
  _i3.Either<String, List<_i10.Post>> get failureOrSuccess =>
      (super.noSuchMethod(
        Invocation.getter(#failureOrSuccess),
        returnValue: _FakeEither_1<String, List<_i10.Post>>(
          this,
          Invocation.getter(#failureOrSuccess),
        ),
      ) as _i3.Either<String, List<_i10.Post>>);

  @override
  set failureOrSuccess(
          _i3.Either<String, List<_i10.Post>>? _failureOrSuccess) =>
      super.noSuchMethod(
        Invocation.setter(
          #failureOrSuccess,
          _failureOrSuccess,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.InternalFinalCallback<void> get onStart => (super.noSuchMethod(
        Invocation.getter(#onStart),
        returnValue: _FakeInternalFinalCallback_7<void>(
          this,
          Invocation.getter(#onStart),
        ),
      ) as _i4.InternalFinalCallback<void>);

  @override
  _i4.InternalFinalCallback<void> get onDelete => (super.noSuchMethod(
        Invocation.getter(#onDelete),
        returnValue: _FakeInternalFinalCallback_7<void>(
          this,
          Invocation.getter(#onDelete),
        ),
      ) as _i4.InternalFinalCallback<void>);

  @override
  bool get initialized => (super.noSuchMethod(
        Invocation.getter(#initialized),
        returnValue: false,
      ) as bool);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  int get listeners => (super.noSuchMethod(
        Invocation.getter(#listeners),
        returnValue: 0,
      ) as int);

  @override
  _i4.RxStatus get status => (super.noSuchMethod(
        Invocation.getter(#status),
        returnValue: _FakeRxStatus_8(
          this,
          Invocation.getter(#status),
        ),
      ) as _i4.RxStatus);

  @override
  set value(List<_i10.Post>? newValue) => super.noSuchMethod(
        Invocation.setter(
          #value,
          newValue,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Rx<_i12.ApiState> get apiStatus => (super.noSuchMethod(
        Invocation.getter(#apiStatus),
        returnValue: _FakeRx_9<_i12.ApiState>(
          this,
          Invocation.getter(#apiStatus),
        ),
      ) as _i4.Rx<_i12.ApiState>);

  @override
  set apiStatus(_i4.Rx<_i12.ApiState>? _apiStatus) => super.noSuchMethod(
        Invocation.setter(
          #apiStatus,
          _apiStatus,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i4.Rx<String> get errorMessage => (super.noSuchMethod(
        Invocation.getter(#errorMessage),
        returnValue: _FakeRx_9<String>(
          this,
          Invocation.getter(#errorMessage),
        ),
      ) as _i4.Rx<String>);

  @override
  set errorMessage(_i4.Rx<String>? _errorMessage) => super.noSuchMethod(
        Invocation.setter(
          #errorMessage,
          _errorMessage,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i9.Future<void> createPost(_i10.Post? post) => (super.noSuchMethod(
        Invocation.method(
          #createPost,
          [post],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> updatePost(_i10.Post? post) => (super.noSuchMethod(
        Invocation.method(
          #updatePost,
          [post],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> deletePost(_i10.Post? post) => (super.noSuchMethod(
        Invocation.method(
          #deletePost,
          [post],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  _i9.Future<void> getPosts(_i13.User? user) => (super.noSuchMethod(
        Invocation.method(
          #getPosts,
          [user],
        ),
        returnValue: _i9.Future<void>.value(),
        returnValueForMissingStub: _i9.Future<void>.value(),
      ) as _i9.Future<void>);

  @override
  void update([
    List<Object>? ids,
    bool? condition = true,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #update,
          [
            ids,
            condition,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onInit() => super.noSuchMethod(
        Invocation.method(
          #onInit,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onReady() => super.noSuchMethod(
        Invocation.method(
          #onReady,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onClose() => super.noSuchMethod(
        Invocation.method(
          #onClose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void $configureLifeCycle() => super.noSuchMethod(
        Invocation.method(
          #$configureLifeCycle,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i14.Disposer addListener(_i14.GetStateUpdate? listener) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValue: () {},
      ) as _i14.Disposer);

  @override
  void removeListener(_i15.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void refresh() => super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void refreshGroup(Object? id) => super.noSuchMethod(
        Invocation.method(
          #refreshGroup,
          [id],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyChildrens() => super.noSuchMethod(
        Invocation.method(
          #notifyChildrens,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListenerId(
    Object? id,
    _i15.VoidCallback? listener,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #removeListenerId,
          [
            id,
            listener,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i14.Disposer addListenerId(
    Object? key,
    _i14.GetStateUpdate? listener,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addListenerId,
          [
            key,
            listener,
          ],
        ),
        returnValue: () {},
      ) as _i14.Disposer);

  @override
  void disposeId(Object? id) => super.noSuchMethod(
        Invocation.method(
          #disposeId,
          [id],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void change(
    List<_i10.Post>? newState, {
    _i4.RxStatus? status,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #change,
          [newState],
          {#status: status},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void append(
    _i9.Future<List<_i10.Post>> Function() Function()? body, {
    String? errorMessage,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #append,
          [body],
          {#errorMessage: errorMessage},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void createItem(_i9.Future<_i3.Either<String, bool>>? apiCallback) =>
      super.noSuchMethod(
        Invocation.method(
          #createItem,
          [apiCallback],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void updateItem(_i9.Future<_i3.Either<String, bool>>? apiCallback) =>
      super.noSuchMethod(
        Invocation.method(
          #updateItem,
          [apiCallback],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void deleteItem(_i9.Future<_i3.Either<String, bool>>? apiCallback) =>
      super.noSuchMethod(
        Invocation.method(
          #deleteItem,
          [apiCallback],
        ),
        returnValueForMissingStub: null,
      );
}