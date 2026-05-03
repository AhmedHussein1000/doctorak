// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_appointments_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MyAppointmentsResponseModel _$MyAppointmentsResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _MyAppointmentsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$MyAppointmentsResponseModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<AppointmentModel>? get appointmentsData =>
      throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this MyAppointmentsResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyAppointmentsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyAppointmentsResponseModelCopyWith<MyAppointmentsResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAppointmentsResponseModelCopyWith<$Res> {
  factory $MyAppointmentsResponseModelCopyWith(
    MyAppointmentsResponseModel value,
    $Res Function(MyAppointmentsResponseModel) then,
  ) =
      _$MyAppointmentsResponseModelCopyWithImpl<
        $Res,
        MyAppointmentsResponseModel
      >;
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') List<AppointmentModel>? appointmentsData,
    bool? status,
    int? code,
  });
}

/// @nodoc
class _$MyAppointmentsResponseModelCopyWithImpl<
  $Res,
  $Val extends MyAppointmentsResponseModel
>
    implements $MyAppointmentsResponseModelCopyWith<$Res> {
  _$MyAppointmentsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyAppointmentsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? appointmentsData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            appointmentsData: freezed == appointmentsData
                ? _value.appointmentsData
                : appointmentsData // ignore: cast_nullable_to_non_nullable
                      as List<AppointmentModel>?,
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
}

/// @nodoc
abstract class _$$MyAppointmentsResponseModelImplCopyWith<$Res>
    implements $MyAppointmentsResponseModelCopyWith<$Res> {
  factory _$$MyAppointmentsResponseModelImplCopyWith(
    _$MyAppointmentsResponseModelImpl value,
    $Res Function(_$MyAppointmentsResponseModelImpl) then,
  ) = __$$MyAppointmentsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') List<AppointmentModel>? appointmentsData,
    bool? status,
    int? code,
  });
}

/// @nodoc
class __$$MyAppointmentsResponseModelImplCopyWithImpl<$Res>
    extends
        _$MyAppointmentsResponseModelCopyWithImpl<
          $Res,
          _$MyAppointmentsResponseModelImpl
        >
    implements _$$MyAppointmentsResponseModelImplCopyWith<$Res> {
  __$$MyAppointmentsResponseModelImplCopyWithImpl(
    _$MyAppointmentsResponseModelImpl _value,
    $Res Function(_$MyAppointmentsResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyAppointmentsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? appointmentsData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _$MyAppointmentsResponseModelImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        appointmentsData: freezed == appointmentsData
            ? _value._appointmentsData
            : appointmentsData // ignore: cast_nullable_to_non_nullable
                  as List<AppointmentModel>?,
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
class _$MyAppointmentsResponseModelImpl
    implements _MyAppointmentsResponseModel {
  const _$MyAppointmentsResponseModelImpl({
    this.message,
    @JsonKey(name: 'data') final List<AppointmentModel>? appointmentsData,
    this.status,
    this.code,
  }) : _appointmentsData = appointmentsData;

  factory _$MyAppointmentsResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$MyAppointmentsResponseModelImplFromJson(json);

  @override
  final String? message;
  final List<AppointmentModel>? _appointmentsData;
  @override
  @JsonKey(name: 'data')
  List<AppointmentModel>? get appointmentsData {
    final value = _appointmentsData;
    if (value == null) return null;
    if (_appointmentsData is EqualUnmodifiableListView)
      return _appointmentsData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'MyAppointmentsResponseModel(message: $message, appointmentsData: $appointmentsData, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAppointmentsResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._appointmentsData,
              _appointmentsData,
            ) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_appointmentsData),
    status,
    code,
  );

  /// Create a copy of MyAppointmentsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAppointmentsResponseModelImplCopyWith<_$MyAppointmentsResponseModelImpl>
  get copyWith =>
      __$$MyAppointmentsResponseModelImplCopyWithImpl<
        _$MyAppointmentsResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyAppointmentsResponseModelImplToJson(this);
  }
}

abstract class _MyAppointmentsResponseModel
    implements MyAppointmentsResponseModel {
  const factory _MyAppointmentsResponseModel({
    final String? message,
    @JsonKey(name: 'data') final List<AppointmentModel>? appointmentsData,
    final bool? status,
    final int? code,
  }) = _$MyAppointmentsResponseModelImpl;

  factory _MyAppointmentsResponseModel.fromJson(Map<String, dynamic> json) =
      _$MyAppointmentsResponseModelImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  List<AppointmentModel>? get appointmentsData;
  @override
  bool? get status;
  @override
  int? get code;

  /// Create a copy of MyAppointmentsResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyAppointmentsResponseModelImplCopyWith<_$MyAppointmentsResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
