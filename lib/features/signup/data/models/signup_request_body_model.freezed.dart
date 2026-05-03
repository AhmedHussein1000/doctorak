// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_request_body_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SignupRequestBodyModel _$SignupRequestBodyModelFromJson(
  Map<String, dynamic> json,
) {
  return _SignupRequestBodyModel.fromJson(json);
}

/// @nodoc
mixin _$SignupRequestBodyModel {
  @JsonKey(name: 'name')
  String get userName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation => throw _privateConstructorUsedError;
  int get gender => throw _privateConstructorUsedError;

  /// Serializes this SignupRequestBodyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupRequestBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupRequestBodyModelCopyWith<SignupRequestBodyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupRequestBodyModelCopyWith<$Res> {
  factory $SignupRequestBodyModelCopyWith(
    SignupRequestBodyModel value,
    $Res Function(SignupRequestBodyModel) then,
  ) = _$SignupRequestBodyModelCopyWithImpl<$Res, SignupRequestBodyModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'name') String userName,
    String phone,
    String email,
    String password,
    @JsonKey(name: 'password_confirmation') String passwordConfirmation,
    int gender,
  });
}

/// @nodoc
class _$SignupRequestBodyModelCopyWithImpl<
  $Res,
  $Val extends SignupRequestBodyModel
>
    implements $SignupRequestBodyModelCopyWith<$Res> {
  _$SignupRequestBodyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupRequestBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? gender = null,
  }) {
    return _then(
      _value.copyWith(
            userName: null == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                      as String,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            passwordConfirmation: null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                      as String,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SignupRequestBodyModelImplCopyWith<$Res>
    implements $SignupRequestBodyModelCopyWith<$Res> {
  factory _$$SignupRequestBodyModelImplCopyWith(
    _$SignupRequestBodyModelImpl value,
    $Res Function(_$SignupRequestBodyModelImpl) then,
  ) = __$$SignupRequestBodyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'name') String userName,
    String phone,
    String email,
    String password,
    @JsonKey(name: 'password_confirmation') String passwordConfirmation,
    int gender,
  });
}

/// @nodoc
class __$$SignupRequestBodyModelImplCopyWithImpl<$Res>
    extends
        _$SignupRequestBodyModelCopyWithImpl<$Res, _$SignupRequestBodyModelImpl>
    implements _$$SignupRequestBodyModelImplCopyWith<$Res> {
  __$$SignupRequestBodyModelImplCopyWithImpl(
    _$SignupRequestBodyModelImpl _value,
    $Res Function(_$SignupRequestBodyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupRequestBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? passwordConfirmation = null,
    Object? gender = null,
  }) {
    return _then(
      _$SignupRequestBodyModelImpl(
        userName: null == userName
            ? _value.userName
            : userName // ignore: cast_nullable_to_non_nullable
                  as String,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        passwordConfirmation: null == passwordConfirmation
            ? _value.passwordConfirmation
            : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                  as String,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupRequestBodyModelImpl implements _SignupRequestBodyModel {
  const _$SignupRequestBodyModelImpl({
    @JsonKey(name: 'name') required this.userName,
    required this.phone,
    required this.email,
    required this.password,
    @JsonKey(name: 'password_confirmation') required this.passwordConfirmation,
    required this.gender,
  });

  factory _$SignupRequestBodyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupRequestBodyModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String userName;
  @override
  final String phone;
  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  @override
  final int gender;

  @override
  String toString() {
    return 'SignupRequestBodyModel(userName: $userName, phone: $phone, email: $email, password: $password, passwordConfirmation: $passwordConfirmation, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupRequestBodyModelImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    userName,
    phone,
    email,
    password,
    passwordConfirmation,
    gender,
  );

  /// Create a copy of SignupRequestBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupRequestBodyModelImplCopyWith<_$SignupRequestBodyModelImpl>
  get copyWith =>
      __$$SignupRequestBodyModelImplCopyWithImpl<_$SignupRequestBodyModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupRequestBodyModelImplToJson(this);
  }
}

abstract class _SignupRequestBodyModel implements SignupRequestBodyModel {
  const factory _SignupRequestBodyModel({
    @JsonKey(name: 'name') required final String userName,
    required final String phone,
    required final String email,
    required final String password,
    @JsonKey(name: 'password_confirmation')
    required final String passwordConfirmation,
    required final int gender,
  }) = _$SignupRequestBodyModelImpl;

  factory _SignupRequestBodyModel.fromJson(Map<String, dynamic> json) =
      _$SignupRequestBodyModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get userName;
  @override
  String get phone;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(name: 'password_confirmation')
  String get passwordConfirmation;
  @override
  int get gender;

  /// Create a copy of SignupRequestBodyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupRequestBodyModelImplCopyWith<_$SignupRequestBodyModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
