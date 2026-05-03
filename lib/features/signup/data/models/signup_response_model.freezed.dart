// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignupResponseModel _$SignupResponseModelFromJson(Map<String, dynamic> json) {
  return _SignupResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignupResponseModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  UserDataModel? get userData => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this SignupResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupResponseModelCopyWith<SignupResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupResponseModelCopyWith<$Res> {
  factory $SignupResponseModelCopyWith(
    SignupResponseModel value,
    $Res Function(SignupResponseModel) then,
  ) = _$SignupResponseModelCopyWithImpl<$Res, SignupResponseModel>;
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') UserDataModel? userData,
    bool? status,
    int? code,
  });

  $UserDataModelCopyWith<$Res>? get userData;
}

/// @nodoc
class _$SignupResponseModelCopyWithImpl<$Res, $Val extends SignupResponseModel>
    implements $SignupResponseModelCopyWith<$Res> {
  _$SignupResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            userData: freezed == userData
                ? _value.userData
                : userData // ignore: cast_nullable_to_non_nullable
                      as UserDataModel?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as bool?,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataModelCopyWith<$Res>? get userData {
    if (_value.userData == null) {
      return null;
    }

    return $UserDataModelCopyWith<$Res>(_value.userData!, (value) {
      return _then(_value.copyWith(userData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupResponseModelImplCopyWith<$Res>
    implements $SignupResponseModelCopyWith<$Res> {
  factory _$$SignupResponseModelImplCopyWith(
    _$SignupResponseModelImpl value,
    $Res Function(_$SignupResponseModelImpl) then,
  ) = __$$SignupResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') UserDataModel? userData,
    bool? status,
    int? code,
  });

  @override
  $UserDataModelCopyWith<$Res>? get userData;
}

/// @nodoc
class __$$SignupResponseModelImplCopyWithImpl<$Res>
    extends _$SignupResponseModelCopyWithImpl<$Res, _$SignupResponseModelImpl>
    implements _$$SignupResponseModelImplCopyWith<$Res> {
  __$$SignupResponseModelImplCopyWithImpl(
    _$SignupResponseModelImpl _value,
    $Res Function(_$SignupResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? userData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _$SignupResponseModelImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        userData: freezed == userData
            ? _value.userData
            : userData // ignore: cast_nullable_to_non_nullable
                  as UserDataModel?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as bool?,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupResponseModelImpl implements _SignupResponseModel {
  const _$SignupResponseModelImpl({
    this.message,
    @JsonKey(name: 'data') this.userData,
    this.status,
    this.code,
  });

  factory _$SignupResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupResponseModelImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final UserDataModel? userData;
  @override
  final bool? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'SignupResponseModel(message: $message, userData: $userData, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.userData, userData) ||
                other.userData == userData) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, userData, status, code);

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupResponseModelImplCopyWith<_$SignupResponseModelImpl> get copyWith =>
      __$$SignupResponseModelImplCopyWithImpl<_$SignupResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupResponseModelImplToJson(this);
  }
}

abstract class _SignupResponseModel implements SignupResponseModel {
  const factory _SignupResponseModel({
    final String? message,
    @JsonKey(name: 'data') final UserDataModel? userData,
    final bool? status,
    final int? code,
  }) = _$SignupResponseModelImpl;

  factory _SignupResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignupResponseModelImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  UserDataModel? get userData;
  @override
  bool? get status;
  @override
  int? get code;

  /// Create a copy of SignupResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupResponseModelImplCopyWith<_$SignupResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
