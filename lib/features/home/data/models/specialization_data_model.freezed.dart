// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialization_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpecializationDataModel _$SpecializationDataModelFromJson(
  Map<String, dynamic> json,
) {
  return _SpecializationDataModel.fromJson(json);
}

/// @nodoc
mixin _$SpecializationDataModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'doctors')
  List<DoctorModel?>? get doctors => throw _privateConstructorUsedError;

  /// Serializes this SpecializationDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecializationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecializationDataModelCopyWith<SpecializationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationDataModelCopyWith<$Res> {
  factory $SpecializationDataModelCopyWith(
    SpecializationDataModel value,
    $Res Function(SpecializationDataModel) then,
  ) = _$SpecializationDataModelCopyWithImpl<$Res, SpecializationDataModel>;
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'doctors') List<DoctorModel?>? doctors,
  });
}

/// @nodoc
class _$SpecializationDataModelCopyWithImpl<
  $Res,
  $Val extends SpecializationDataModel
>
    implements $SpecializationDataModelCopyWith<$Res> {
  _$SpecializationDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecializationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? doctors = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            doctors: freezed == doctors
                ? _value.doctors
                : doctors // ignore: cast_nullable_to_non_nullable
                      as List<DoctorModel?>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpecializationDataModelImplCopyWith<$Res>
    implements $SpecializationDataModelCopyWith<$Res> {
  factory _$$SpecializationDataModelImplCopyWith(
    _$SpecializationDataModelImpl value,
    $Res Function(_$SpecializationDataModelImpl) then,
  ) = __$$SpecializationDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    String? name,
    @JsonKey(name: 'doctors') List<DoctorModel?>? doctors,
  });
}

/// @nodoc
class __$$SpecializationDataModelImplCopyWithImpl<$Res>
    extends
        _$SpecializationDataModelCopyWithImpl<
          $Res,
          _$SpecializationDataModelImpl
        >
    implements _$$SpecializationDataModelImplCopyWith<$Res> {
  __$$SpecializationDataModelImplCopyWithImpl(
    _$SpecializationDataModelImpl _value,
    $Res Function(_$SpecializationDataModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpecializationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? doctors = freezed,
  }) {
    return _then(
      _$SpecializationDataModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        doctors: freezed == doctors
            ? _value._doctors
            : doctors // ignore: cast_nullable_to_non_nullable
                  as List<DoctorModel?>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationDataModelImpl implements _SpecializationDataModel {
  const _$SpecializationDataModelImpl({
    this.id,
    this.name,
    @JsonKey(name: 'doctors') final List<DoctorModel?>? doctors,
  }) : _doctors = doctors;

  factory _$SpecializationDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecializationDataModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<DoctorModel?>? _doctors;
  @override
  @JsonKey(name: 'doctors')
  List<DoctorModel?>? get doctors {
    final value = _doctors;
    if (value == null) return null;
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecializationDataModel(id: $id, name: $name, doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    const DeepCollectionEquality().hash(_doctors),
  );

  /// Create a copy of SpecializationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationDataModelImplCopyWith<_$SpecializationDataModelImpl>
  get copyWith =>
      __$$SpecializationDataModelImplCopyWithImpl<
        _$SpecializationDataModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationDataModelImplToJson(this);
  }
}

abstract class _SpecializationDataModel implements SpecializationDataModel {
  const factory _SpecializationDataModel({
    final int? id,
    final String? name,
    @JsonKey(name: 'doctors') final List<DoctorModel?>? doctors,
  }) = _$SpecializationDataModelImpl;

  factory _SpecializationDataModel.fromJson(Map<String, dynamic> json) =
      _$SpecializationDataModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'doctors')
  List<DoctorModel?>? get doctors;

  /// Create a copy of SpecializationDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationDataModelImplCopyWith<_$SpecializationDataModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
