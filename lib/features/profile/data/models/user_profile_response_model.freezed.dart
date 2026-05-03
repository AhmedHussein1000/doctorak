// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfileResponseModel _$UserProfileResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _UserProfileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponseModel {
  @JsonKey(name: 'data')
  List<UserProfileModel?>? get users => throw _privateConstructorUsedError;

  /// Serializes this UserProfileResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileResponseModelCopyWith<UserProfileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseModelCopyWith<$Res> {
  factory $UserProfileResponseModelCopyWith(
    UserProfileResponseModel value,
    $Res Function(UserProfileResponseModel) then,
  ) = _$UserProfileResponseModelCopyWithImpl<$Res, UserProfileResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<UserProfileModel?>? users});
}

/// @nodoc
class _$UserProfileResponseModelCopyWithImpl<
  $Res,
  $Val extends UserProfileResponseModel
>
    implements $UserProfileResponseModelCopyWith<$Res> {
  _$UserProfileResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? users = freezed}) {
    return _then(
      _value.copyWith(
            users: freezed == users
                ? _value.users
                : users // ignore: cast_nullable_to_non_nullable
                      as List<UserProfileModel?>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileResponseModelImplCopyWith<$Res>
    implements $UserProfileResponseModelCopyWith<$Res> {
  factory _$$UserProfileResponseModelImplCopyWith(
    _$UserProfileResponseModelImpl value,
    $Res Function(_$UserProfileResponseModelImpl) then,
  ) = __$$UserProfileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<UserProfileModel?>? users});
}

/// @nodoc
class __$$UserProfileResponseModelImplCopyWithImpl<$Res>
    extends
        _$UserProfileResponseModelCopyWithImpl<
          $Res,
          _$UserProfileResponseModelImpl
        >
    implements _$$UserProfileResponseModelImplCopyWith<$Res> {
  __$$UserProfileResponseModelImplCopyWithImpl(
    _$UserProfileResponseModelImpl _value,
    $Res Function(_$UserProfileResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? users = freezed}) {
    return _then(
      _$UserProfileResponseModelImpl(
        users: freezed == users
            ? _value._users
            : users // ignore: cast_nullable_to_non_nullable
                  as List<UserProfileModel?>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseModelImpl implements _UserProfileResponseModel {
  const _$UserProfileResponseModelImpl({
    @JsonKey(name: 'data') final List<UserProfileModel?>? users,
  }) : _users = users;

  factory _$UserProfileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseModelImplFromJson(json);

  final List<UserProfileModel?>? _users;
  @override
  @JsonKey(name: 'data')
  List<UserProfileModel?>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserProfileResponseModel(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseModelImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of UserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseModelImplCopyWith<_$UserProfileResponseModelImpl>
  get copyWith =>
      __$$UserProfileResponseModelImplCopyWithImpl<
        _$UserProfileResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseModelImplToJson(this);
  }
}

abstract class _UserProfileResponseModel implements UserProfileResponseModel {
  const factory _UserProfileResponseModel({
    @JsonKey(name: 'data') final List<UserProfileModel?>? users,
  }) = _$UserProfileResponseModelImpl;

  factory _UserProfileResponseModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<UserProfileModel?>? get users;

  /// Create a copy of UserProfileResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileResponseModelImplCopyWith<_$UserProfileResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
