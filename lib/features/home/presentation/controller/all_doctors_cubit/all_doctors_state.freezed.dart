// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_doctors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AllDoctorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity?>? allDoctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity?>? allDoctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity?>? allDoctors)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllDoctorsInitial value) initial,
    required TResult Function(AllDoctorsLoading value) loading,
    required TResult Function(AllDoctorsSuccess value) success,
    required TResult Function(AllDoctorsFailure value) failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllDoctorsInitial value)? initial,
    TResult? Function(AllDoctorsLoading value)? loading,
    TResult? Function(AllDoctorsSuccess value)? success,
    TResult? Function(AllDoctorsFailure value)? failure,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllDoctorsInitial value)? initial,
    TResult Function(AllDoctorsLoading value)? loading,
    TResult Function(AllDoctorsSuccess value)? success,
    TResult Function(AllDoctorsFailure value)? failure,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllDoctorsStateCopyWith<$Res> {
  factory $AllDoctorsStateCopyWith(
    AllDoctorsState value,
    $Res Function(AllDoctorsState) then,
  ) = _$AllDoctorsStateCopyWithImpl<$Res, AllDoctorsState>;
}

/// @nodoc
class _$AllDoctorsStateCopyWithImpl<$Res, $Val extends AllDoctorsState>
    implements $AllDoctorsStateCopyWith<$Res> {
  _$AllDoctorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AllDoctorsInitialImplCopyWith<$Res> {
  factory _$$AllDoctorsInitialImplCopyWith(
    _$AllDoctorsInitialImpl value,
    $Res Function(_$AllDoctorsInitialImpl) then,
  ) = __$$AllDoctorsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllDoctorsInitialImplCopyWithImpl<$Res>
    extends _$AllDoctorsStateCopyWithImpl<$Res, _$AllDoctorsInitialImpl>
    implements _$$AllDoctorsInitialImplCopyWith<$Res> {
  __$$AllDoctorsInitialImplCopyWithImpl(
    _$AllDoctorsInitialImpl _value,
    $Res Function(_$AllDoctorsInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllDoctorsInitialImpl implements AllDoctorsInitial {
  const _$AllDoctorsInitialImpl();

  @override
  String toString() {
    return 'AllDoctorsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllDoctorsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity?>? allDoctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity?>? allDoctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity?>? allDoctors)? success,
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
    required TResult Function(AllDoctorsInitial value) initial,
    required TResult Function(AllDoctorsLoading value) loading,
    required TResult Function(AllDoctorsSuccess value) success,
    required TResult Function(AllDoctorsFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllDoctorsInitial value)? initial,
    TResult? Function(AllDoctorsLoading value)? loading,
    TResult? Function(AllDoctorsSuccess value)? success,
    TResult? Function(AllDoctorsFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllDoctorsInitial value)? initial,
    TResult Function(AllDoctorsLoading value)? loading,
    TResult Function(AllDoctorsSuccess value)? success,
    TResult Function(AllDoctorsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsInitial implements AllDoctorsState {
  const factory AllDoctorsInitial() = _$AllDoctorsInitialImpl;
}

/// @nodoc
abstract class _$$AllDoctorsLoadingImplCopyWith<$Res> {
  factory _$$AllDoctorsLoadingImplCopyWith(
    _$AllDoctorsLoadingImpl value,
    $Res Function(_$AllDoctorsLoadingImpl) then,
  ) = __$$AllDoctorsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AllDoctorsLoadingImplCopyWithImpl<$Res>
    extends _$AllDoctorsStateCopyWithImpl<$Res, _$AllDoctorsLoadingImpl>
    implements _$$AllDoctorsLoadingImplCopyWith<$Res> {
  __$$AllDoctorsLoadingImplCopyWithImpl(
    _$AllDoctorsLoadingImpl _value,
    $Res Function(_$AllDoctorsLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AllDoctorsLoadingImpl implements AllDoctorsLoading {
  const _$AllDoctorsLoadingImpl();

  @override
  String toString() {
    return 'AllDoctorsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AllDoctorsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity?>? allDoctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity?>? allDoctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity?>? allDoctors)? success,
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
    required TResult Function(AllDoctorsInitial value) initial,
    required TResult Function(AllDoctorsLoading value) loading,
    required TResult Function(AllDoctorsSuccess value) success,
    required TResult Function(AllDoctorsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllDoctorsInitial value)? initial,
    TResult? Function(AllDoctorsLoading value)? loading,
    TResult? Function(AllDoctorsSuccess value)? success,
    TResult? Function(AllDoctorsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllDoctorsInitial value)? initial,
    TResult Function(AllDoctorsLoading value)? loading,
    TResult Function(AllDoctorsSuccess value)? success,
    TResult Function(AllDoctorsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsLoading implements AllDoctorsState {
  const factory AllDoctorsLoading() = _$AllDoctorsLoadingImpl;
}

/// @nodoc
abstract class _$$AllDoctorsSuccessImplCopyWith<$Res> {
  factory _$$AllDoctorsSuccessImplCopyWith(
    _$AllDoctorsSuccessImpl value,
    $Res Function(_$AllDoctorsSuccessImpl) then,
  ) = __$$AllDoctorsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DoctorEntity?>? allDoctors});
}

/// @nodoc
class __$$AllDoctorsSuccessImplCopyWithImpl<$Res>
    extends _$AllDoctorsStateCopyWithImpl<$Res, _$AllDoctorsSuccessImpl>
    implements _$$AllDoctorsSuccessImplCopyWith<$Res> {
  __$$AllDoctorsSuccessImplCopyWithImpl(
    _$AllDoctorsSuccessImpl _value,
    $Res Function(_$AllDoctorsSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? allDoctors = freezed}) {
    return _then(
      _$AllDoctorsSuccessImpl(
        freezed == allDoctors
            ? _value._allDoctors
            : allDoctors // ignore: cast_nullable_to_non_nullable
                  as List<DoctorEntity?>?,
      ),
    );
  }
}

/// @nodoc

class _$AllDoctorsSuccessImpl implements AllDoctorsSuccess {
  const _$AllDoctorsSuccessImpl(final List<DoctorEntity?>? allDoctors)
    : _allDoctors = allDoctors;

  final List<DoctorEntity?>? _allDoctors;
  @override
  List<DoctorEntity?>? get allDoctors {
    final value = _allDoctors;
    if (value == null) return null;
    if (_allDoctors is EqualUnmodifiableListView) return _allDoctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllDoctorsState.success(allDoctors: $allDoctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllDoctorsSuccessImpl &&
            const DeepCollectionEquality().equals(
              other._allDoctors,
              _allDoctors,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_allDoctors),
  );

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllDoctorsSuccessImplCopyWith<_$AllDoctorsSuccessImpl> get copyWith =>
      __$$AllDoctorsSuccessImplCopyWithImpl<_$AllDoctorsSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity?>? allDoctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return success(allDoctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity?>? allDoctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return success?.call(allDoctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity?>? allDoctors)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(allDoctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AllDoctorsInitial value) initial,
    required TResult Function(AllDoctorsLoading value) loading,
    required TResult Function(AllDoctorsSuccess value) success,
    required TResult Function(AllDoctorsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllDoctorsInitial value)? initial,
    TResult? Function(AllDoctorsLoading value)? loading,
    TResult? Function(AllDoctorsSuccess value)? success,
    TResult? Function(AllDoctorsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllDoctorsInitial value)? initial,
    TResult Function(AllDoctorsLoading value)? loading,
    TResult Function(AllDoctorsSuccess value)? success,
    TResult Function(AllDoctorsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsSuccess implements AllDoctorsState {
  const factory AllDoctorsSuccess(final List<DoctorEntity?>? allDoctors) =
      _$AllDoctorsSuccessImpl;

  List<DoctorEntity?>? get allDoctors;

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllDoctorsSuccessImplCopyWith<_$AllDoctorsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AllDoctorsFailureImplCopyWith<$Res> {
  factory _$$AllDoctorsFailureImplCopyWith(
    _$AllDoctorsFailureImpl value,
    $Res Function(_$AllDoctorsFailureImpl) then,
  ) = __$$AllDoctorsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$AllDoctorsFailureImplCopyWithImpl<$Res>
    extends _$AllDoctorsStateCopyWithImpl<$Res, _$AllDoctorsFailureImpl>
    implements _$$AllDoctorsFailureImplCopyWith<$Res> {
  __$$AllDoctorsFailureImplCopyWithImpl(
    _$AllDoctorsFailureImpl _value,
    $Res Function(_$AllDoctorsFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? apiErrorModel = null}) {
    return _then(
      _$AllDoctorsFailureImpl(
        null == apiErrorModel
            ? _value.apiErrorModel
            : apiErrorModel // ignore: cast_nullable_to_non_nullable
                  as ApiErrorModel,
      ),
    );
  }
}

/// @nodoc

class _$AllDoctorsFailureImpl implements AllDoctorsFailure {
  const _$AllDoctorsFailureImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'AllDoctorsState.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllDoctorsFailureImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllDoctorsFailureImplCopyWith<_$AllDoctorsFailureImpl> get copyWith =>
      __$$AllDoctorsFailureImplCopyWithImpl<_$AllDoctorsFailureImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<DoctorEntity?>? allDoctors) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<DoctorEntity?>? allDoctors)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<DoctorEntity?>? allDoctors)? success,
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
    required TResult Function(AllDoctorsInitial value) initial,
    required TResult Function(AllDoctorsLoading value) loading,
    required TResult Function(AllDoctorsSuccess value) success,
    required TResult Function(AllDoctorsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AllDoctorsInitial value)? initial,
    TResult? Function(AllDoctorsLoading value)? loading,
    TResult? Function(AllDoctorsSuccess value)? success,
    TResult? Function(AllDoctorsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AllDoctorsInitial value)? initial,
    TResult Function(AllDoctorsLoading value)? loading,
    TResult Function(AllDoctorsSuccess value)? success,
    TResult Function(AllDoctorsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AllDoctorsFailure implements AllDoctorsState {
  const factory AllDoctorsFailure(final ApiErrorModel apiErrorModel) =
      _$AllDoctorsFailureImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of AllDoctorsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllDoctorsFailureImplCopyWith<_$AllDoctorsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
