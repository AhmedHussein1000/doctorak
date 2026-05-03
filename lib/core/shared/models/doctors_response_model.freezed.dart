// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'doctors_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DoctorsResponseModel _$DoctorsResponseModelFromJson(Map<String, dynamic> json) {
  return _DoctorsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DoctorsResponseModel {
  @JsonKey(name: 'data')
  List<DoctorModel?>? get doctorsList => throw _privateConstructorUsedError;

  /// Serializes this DoctorsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DoctorsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DoctorsResponseModelCopyWith<DoctorsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DoctorsResponseModelCopyWith<$Res> {
  factory $DoctorsResponseModelCopyWith(
    DoctorsResponseModel value,
    $Res Function(DoctorsResponseModel) then,
  ) = _$DoctorsResponseModelCopyWithImpl<$Res, DoctorsResponseModel>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<DoctorModel?>? doctorsList});
}

/// @nodoc
class _$DoctorsResponseModelCopyWithImpl<
  $Res,
  $Val extends DoctorsResponseModel
>
    implements $DoctorsResponseModelCopyWith<$Res> {
  _$DoctorsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DoctorsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doctorsList = freezed}) {
    return _then(
      _value.copyWith(
            doctorsList: freezed == doctorsList
                ? _value.doctorsList
                : doctorsList // ignore: cast_nullable_to_non_nullable
                      as List<DoctorModel?>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DoctorsResponseModelImplCopyWith<$Res>
    implements $DoctorsResponseModelCopyWith<$Res> {
  factory _$$DoctorsResponseModelImplCopyWith(
    _$DoctorsResponseModelImpl value,
    $Res Function(_$DoctorsResponseModelImpl) then,
  ) = __$$DoctorsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<DoctorModel?>? doctorsList});
}

/// @nodoc
class __$$DoctorsResponseModelImplCopyWithImpl<$Res>
    extends _$DoctorsResponseModelCopyWithImpl<$Res, _$DoctorsResponseModelImpl>
    implements _$$DoctorsResponseModelImplCopyWith<$Res> {
  __$$DoctorsResponseModelImplCopyWithImpl(
    _$DoctorsResponseModelImpl _value,
    $Res Function(_$DoctorsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DoctorsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? doctorsList = freezed}) {
    return _then(
      _$DoctorsResponseModelImpl(
        doctorsList: freezed == doctorsList
            ? _value._doctorsList
            : doctorsList // ignore: cast_nullable_to_non_nullable
                  as List<DoctorModel?>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DoctorsResponseModelImpl implements _DoctorsResponseModel {
  const _$DoctorsResponseModelImpl({
    @JsonKey(name: 'data') final List<DoctorModel?>? doctorsList,
  }) : _doctorsList = doctorsList;

  factory _$DoctorsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DoctorsResponseModelImplFromJson(json);

  final List<DoctorModel?>? _doctorsList;
  @override
  @JsonKey(name: 'data')
  List<DoctorModel?>? get doctorsList {
    final value = _doctorsList;
    if (value == null) return null;
    if (_doctorsList is EqualUnmodifiableListView) return _doctorsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DoctorsResponseModel(doctorsList: $doctorsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsResponseModelImpl &&
            const DeepCollectionEquality().equals(
              other._doctorsList,
              _doctorsList,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_doctorsList),
  );

  /// Create a copy of DoctorsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsResponseModelImplCopyWith<_$DoctorsResponseModelImpl>
  get copyWith =>
      __$$DoctorsResponseModelImplCopyWithImpl<_$DoctorsResponseModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DoctorsResponseModelImplToJson(this);
  }
}

abstract class _DoctorsResponseModel implements DoctorsResponseModel {
  const factory _DoctorsResponseModel({
    @JsonKey(name: 'data') final List<DoctorModel?>? doctorsList,
  }) = _$DoctorsResponseModelImpl;

  factory _DoctorsResponseModel.fromJson(Map<String, dynamic> json) =
      _$DoctorsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<DoctorModel?>? get doctorsList;

  /// Create a copy of DoctorsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DoctorsResponseModelImplCopyWith<_$DoctorsResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
