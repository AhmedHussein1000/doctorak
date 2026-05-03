// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specializations_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SpecializationsResponseModel _$SpecializationsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _SpecializationsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SpecializationsResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationDataModel?>? get specializationDataList =>
      throw _privateConstructorUsedError;

  /// Serializes this SpecializationsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SpecializationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpecializationsResponseModelCopyWith<SpecializationsResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecializationsResponseModelCopyWith<$Res> {
  factory $SpecializationsResponseModelCopyWith(
    SpecializationsResponseModel value,
    $Res Function(SpecializationsResponseModel) then,
  ) =
      _$SpecializationsResponseModelCopyWithImpl<
        $Res,
        SpecializationsResponseModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'data')
    List<SpecializationDataModel?>? specializationDataList,
  });
}

/// @nodoc
class _$SpecializationsResponseModelCopyWithImpl<
  $Res,
  $Val extends SpecializationsResponseModel
>
    implements $SpecializationsResponseModelCopyWith<$Res> {
  _$SpecializationsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SpecializationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? specializationDataList = freezed}) {
    return _then(
      _value.copyWith(
            specializationDataList: freezed == specializationDataList
                ? _value.specializationDataList
                : specializationDataList // ignore: cast_nullable_to_non_nullable
                      as List<SpecializationDataModel?>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpecializationsResponseModelImplCopyWith<$Res>
    implements $SpecializationsResponseModelCopyWith<$Res> {
  factory _$$SpecializationsResponseModelImplCopyWith(
    _$SpecializationsResponseModelImpl value,
    $Res Function(_$SpecializationsResponseModelImpl) then,
  ) = __$$SpecializationsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'data')
    List<SpecializationDataModel?>? specializationDataList,
  });
}

/// @nodoc
class __$$SpecializationsResponseModelImplCopyWithImpl<$Res>
    extends
        _$SpecializationsResponseModelCopyWithImpl<
          $Res,
          _$SpecializationsResponseModelImpl
        >
    implements _$$SpecializationsResponseModelImplCopyWith<$Res> {
  __$$SpecializationsResponseModelImplCopyWithImpl(
    _$SpecializationsResponseModelImpl _value,
    $Res Function(_$SpecializationsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SpecializationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? specializationDataList = freezed}) {
    return _then(
      _$SpecializationsResponseModelImpl(
        specializationDataList: freezed == specializationDataList
            ? _value._specializationDataList
            : specializationDataList // ignore: cast_nullable_to_non_nullable
                  as List<SpecializationDataModel?>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecializationsResponseModelImpl
    implements _SpecializationsResponseModel {
  const _$SpecializationsResponseModelImpl({
    @JsonKey(name: 'data')
    final List<SpecializationDataModel?>? specializationDataList,
  }) : _specializationDataList = specializationDataList;

  factory _$SpecializationsResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$SpecializationsResponseModelImplFromJson(json);

  final List<SpecializationDataModel?>? _specializationDataList;
  @override
  @JsonKey(name: 'data')
  List<SpecializationDataModel?>? get specializationDataList {
    final value = _specializationDataList;
    if (value == null) return null;
    if (_specializationDataList is EqualUnmodifiableListView)
      return _specializationDataList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpecializationsResponseModel(specializationDataList: $specializationDataList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsResponseModelImpl &&
            const DeepCollectionEquality().equals(
              other._specializationDataList,
              _specializationDataList,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_specializationDataList),
  );

  /// Create a copy of SpecializationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsResponseModelImplCopyWith<
    _$SpecializationsResponseModelImpl
  >
  get copyWith =>
      __$$SpecializationsResponseModelImplCopyWithImpl<
        _$SpecializationsResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecializationsResponseModelImplToJson(this);
  }
}

abstract class _SpecializationsResponseModel
    implements SpecializationsResponseModel {
  const factory _SpecializationsResponseModel({
    @JsonKey(name: 'data')
    final List<SpecializationDataModel?>? specializationDataList,
  }) = _$SpecializationsResponseModelImpl;

  factory _SpecializationsResponseModel.fromJson(Map<String, dynamic> json) =
      _$SpecializationsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<SpecializationDataModel?>? get specializationDataList;

  /// Create a copy of SpecializationsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpecializationsResponseModelImplCopyWith<
    _$SpecializationsResponseModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
