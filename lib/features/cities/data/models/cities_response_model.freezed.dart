// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CitiesResponseModel _$CitiesResponseModelFromJson(Map<String, dynamic> json) {
  return _CitiesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CitiesResponseModel {
  @JsonKey(name: 'data')
  List<CityModel?>? get citiesList => throw _privateConstructorUsedError;

  /// Serializes this CitiesResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CitiesResponseModelCopyWith<CitiesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesResponseModelCopyWith<$Res> {
  factory $CitiesResponseModelCopyWith(
    CitiesResponseModel value,
    $Res Function(CitiesResponseModel) then,
  ) = _$CitiesResponseModelCopyWithImpl<$Res, CitiesResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<CityModel?>? citiesList});
}

/// @nodoc
class _$CitiesResponseModelCopyWithImpl<$Res, $Val extends CitiesResponseModel>
    implements $CitiesResponseModelCopyWith<$Res> {
  _$CitiesResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? citiesList = freezed}) {
    return _then(
      _value.copyWith(
            citiesList: freezed == citiesList
                ? _value.citiesList
                : citiesList // ignore: cast_nullable_to_non_nullable
                      as List<CityModel?>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CitiesResponseModelImplCopyWith<$Res>
    implements $CitiesResponseModelCopyWith<$Res> {
  factory _$$CitiesResponseModelImplCopyWith(
    _$CitiesResponseModelImpl value,
    $Res Function(_$CitiesResponseModelImpl) then,
  ) = __$$CitiesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<CityModel?>? citiesList});
}

/// @nodoc
class __$$CitiesResponseModelImplCopyWithImpl<$Res>
    extends _$CitiesResponseModelCopyWithImpl<$Res, _$CitiesResponseModelImpl>
    implements _$$CitiesResponseModelImplCopyWith<$Res> {
  __$$CitiesResponseModelImplCopyWithImpl(
    _$CitiesResponseModelImpl _value,
    $Res Function(_$CitiesResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? citiesList = freezed}) {
    return _then(
      _$CitiesResponseModelImpl(
        citiesList: freezed == citiesList
            ? _value._citiesList
            : citiesList // ignore: cast_nullable_to_non_nullable
                  as List<CityModel?>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CitiesResponseModelImpl implements _CitiesResponseModel {
  const _$CitiesResponseModelImpl({
    @JsonKey(name: 'data') final List<CityModel?>? citiesList,
  }) : _citiesList = citiesList;

  factory _$CitiesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CitiesResponseModelImplFromJson(json);

  final List<CityModel?>? _citiesList;
  @override
  @JsonKey(name: 'data')
  List<CityModel?>? get citiesList {
    final value = _citiesList;
    if (value == null) return null;
    if (_citiesList is EqualUnmodifiableListView) return _citiesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CitiesResponseModel(citiesList: $citiesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CitiesResponseModelImpl &&
            const DeepCollectionEquality().equals(
              other._citiesList,
              _citiesList,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_citiesList),
  );

  /// Create a copy of CitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CitiesResponseModelImplCopyWith<_$CitiesResponseModelImpl> get copyWith =>
      __$$CitiesResponseModelImplCopyWithImpl<_$CitiesResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CitiesResponseModelImplToJson(this);
  }
}

abstract class _CitiesResponseModel implements CitiesResponseModel {
  const factory _CitiesResponseModel({
    @JsonKey(name: 'data') final List<CityModel?>? citiesList,
  }) = _$CitiesResponseModelImpl;

  factory _CitiesResponseModel.fromJson(Map<String, dynamic> json) =
      _$CitiesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<CityModel?>? get citiesList;

  /// Create a copy of CitiesResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CitiesResponseModelImplCopyWith<_$CitiesResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
