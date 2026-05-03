// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignupResponseEntity signupResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignupResponseEntity signupResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignupResponseEntity signupResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupInitial value) initial,
    required TResult Function(SignupLoading value) loading,
    required TResult Function(SignupSuccess value) success,
    required TResult Function(SignupFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupInitial value)? initial,
    TResult? Function(SignupLoading value)? loading,
    TResult? Function(SignupSuccess value)? success,
    TResult? Function(SignupFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupInitial value)? initial,
    TResult Function(SignupLoading value)? loading,
    TResult Function(SignupSuccess value)? success,
    TResult Function(SignupFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
    SignupState value,
    $Res Function(SignupState) then,
  ) = _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignupInitialImplCopyWith<$Res> {
  factory _$$SignupInitialImplCopyWith(
    _$SignupInitialImpl value,
    $Res Function(_$SignupInitialImpl) then,
  ) = __$$SignupInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupInitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupInitialImpl>
    implements _$$SignupInitialImplCopyWith<$Res> {
  __$$SignupInitialImplCopyWithImpl(
    _$SignupInitialImpl _value,
    $Res Function(_$SignupInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupInitialImpl implements SignupInitial {
  const _$SignupInitialImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignupResponseEntity signupResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignupResponseEntity signupResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignupResponseEntity signupResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupInitial value) initial,
    required TResult Function(SignupLoading value) loading,
    required TResult Function(SignupSuccess value) success,
    required TResult Function(SignupFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupInitial value)? initial,
    TResult? Function(SignupLoading value)? loading,
    TResult? Function(SignupSuccess value)? success,
    TResult? Function(SignupFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupInitial value)? initial,
    TResult Function(SignupLoading value)? loading,
    TResult Function(SignupSuccess value)? success,
    TResult Function(SignupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignupInitial implements SignupState {
  const factory SignupInitial() = _$SignupInitialImpl;
}

/// @nodoc
abstract class _$$SignupLoadingImplCopyWith<$Res> {
  factory _$$SignupLoadingImplCopyWith(
    _$SignupLoadingImpl value,
    $Res Function(_$SignupLoadingImpl) then,
  ) = __$$SignupLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupLoadingImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupLoadingImpl>
    implements _$$SignupLoadingImplCopyWith<$Res> {
  __$$SignupLoadingImplCopyWithImpl(
    _$SignupLoadingImpl _value,
    $Res Function(_$SignupLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignupLoadingImpl implements SignupLoading {
  const _$SignupLoadingImpl();

  @override
  String toString() {
    return 'SignupState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignupLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignupResponseEntity signupResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignupResponseEntity signupResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignupResponseEntity signupResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupInitial value) initial,
    required TResult Function(SignupLoading value) loading,
    required TResult Function(SignupSuccess value) success,
    required TResult Function(SignupFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupInitial value)? initial,
    TResult? Function(SignupLoading value)? loading,
    TResult? Function(SignupSuccess value)? success,
    TResult? Function(SignupFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupInitial value)? initial,
    TResult Function(SignupLoading value)? loading,
    TResult Function(SignupSuccess value)? success,
    TResult Function(SignupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignupLoading implements SignupState {
  const factory SignupLoading() = _$SignupLoadingImpl;
}

/// @nodoc
abstract class _$$SignupSuccessImplCopyWith<$Res> {
  factory _$$SignupSuccessImplCopyWith(
    _$SignupSuccessImpl value,
    $Res Function(_$SignupSuccessImpl) then,
  ) = __$$SignupSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SignupResponseEntity signupResponse});
}

/// @nodoc
class __$$SignupSuccessImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupSuccessImpl>
    implements _$$SignupSuccessImplCopyWith<$Res> {
  __$$SignupSuccessImplCopyWithImpl(
    _$SignupSuccessImpl _value,
    $Res Function(_$SignupSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? signupResponse = null}) {
    return _then(
      _$SignupSuccessImpl(
        null == signupResponse
            ? _value.signupResponse
            : signupResponse // ignore: cast_nullable_to_non_nullable
                  as SignupResponseEntity,
      ),
    );
  }
}

/// @nodoc

class _$SignupSuccessImpl implements SignupSuccess {
  const _$SignupSuccessImpl(this.signupResponse);

  @override
  final SignupResponseEntity signupResponse;

  @override
  String toString() {
    return 'SignupState.success(signupResponse: $signupResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupSuccessImpl &&
            (identical(other.signupResponse, signupResponse) ||
                other.signupResponse == signupResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signupResponse);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      __$$SignupSuccessImplCopyWithImpl<_$SignupSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignupResponseEntity signupResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success(signupResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignupResponseEntity signupResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call(signupResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignupResponseEntity signupResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(signupResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupInitial value) initial,
    required TResult Function(SignupLoading value) loading,
    required TResult Function(SignupSuccess value) success,
    required TResult Function(SignupFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupInitial value)? initial,
    TResult? Function(SignupLoading value)? loading,
    TResult? Function(SignupSuccess value)? success,
    TResult? Function(SignupFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupInitial value)? initial,
    TResult Function(SignupLoading value)? loading,
    TResult Function(SignupSuccess value)? success,
    TResult Function(SignupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignupSuccess implements SignupState {
  const factory SignupSuccess(final SignupResponseEntity signupResponse) =
      _$SignupSuccessImpl;

  SignupResponseEntity get signupResponse;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupSuccessImplCopyWith<_$SignupSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupFailureImplCopyWith<$Res> {
  factory _$$SignupFailureImplCopyWith(
    _$SignupFailureImpl value,
    $Res Function(_$SignupFailureImpl) then,
  ) = __$$SignupFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$SignupFailureImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$SignupFailureImpl>
    implements _$$SignupFailureImplCopyWith<$Res> {
  __$$SignupFailureImplCopyWithImpl(
    _$SignupFailureImpl _value,
    $Res Function(_$SignupFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiErrorModel = null}) {
    return _then(
      _$SignupFailureImpl(
        null == apiErrorModel
            ? _value.apiErrorModel
            : apiErrorModel // ignore: cast_nullable_to_non_nullable
                  as ApiErrorModel,
      ),
    );
  }
}

/// @nodoc

class _$SignupFailureImpl implements SignupFailure {
  const _$SignupFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'SignupState.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupFailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      __$$SignupFailureImplCopyWithImpl<_$SignupFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SignupResponseEntity signupResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SignupResponseEntity signupResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SignupResponseEntity signupResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupInitial value) initial,
    required TResult Function(SignupLoading value) loading,
    required TResult Function(SignupSuccess value) success,
    required TResult Function(SignupFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupInitial value)? initial,
    TResult? Function(SignupLoading value)? loading,
    TResult? Function(SignupSuccess value)? success,
    TResult? Function(SignupFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupInitial value)? initial,
    TResult Function(SignupLoading value)? loading,
    TResult Function(SignupSuccess value)? success,
    TResult Function(SignupFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignupFailure implements SignupState {
  const factory SignupFailure(final ApiErrorModel apiErrorModel) =
      _$SignupFailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupFailureImplCopyWith<_$SignupFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
