// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_appointment_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookAppointmentResponseModel _$BookAppointmentResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _BookAppointmentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookAppointmentResponseModel {
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  AppointmentModel? get appointmentData => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  int? get code => throw _privateConstructorUsedError;

  /// Serializes this BookAppointmentResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookAppointmentResponseModelCopyWith<BookAppointmentResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentResponseModelCopyWith<$Res> {
  factory $BookAppointmentResponseModelCopyWith(
    BookAppointmentResponseModel value,
    $Res Function(BookAppointmentResponseModel) then,
  ) =
      _$BookAppointmentResponseModelCopyWithImpl<
        $Res,
        BookAppointmentResponseModel
      >;
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') AppointmentModel? appointmentData,
    bool? status,
    int? code,
  });

  $AppointmentModelCopyWith<$Res>? get appointmentData;
}

/// @nodoc
class _$BookAppointmentResponseModelCopyWithImpl<
  $Res,
  $Val extends BookAppointmentResponseModel
>
    implements $BookAppointmentResponseModelCopyWith<$Res> {
  _$BookAppointmentResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? appointmentData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _value.copyWith(
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            appointmentData: freezed == appointmentData
                ? _value.appointmentData
                : appointmentData // ignore: cast_nullable_to_non_nullable
                      as AppointmentModel?,
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

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppointmentModelCopyWith<$Res>? get appointmentData {
    if (_value.appointmentData == null) {
      return null;
    }

    return $AppointmentModelCopyWith<$Res>(_value.appointmentData!, (value) {
      return _then(_value.copyWith(appointmentData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookAppointmentResponseModelImplCopyWith<$Res>
    implements $BookAppointmentResponseModelCopyWith<$Res> {
  factory _$$BookAppointmentResponseModelImplCopyWith(
    _$BookAppointmentResponseModelImpl value,
    $Res Function(_$BookAppointmentResponseModelImpl) then,
  ) = __$$BookAppointmentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? message,
    @JsonKey(name: 'data') AppointmentModel? appointmentData,
    bool? status,
    int? code,
  });

  @override
  $AppointmentModelCopyWith<$Res>? get appointmentData;
}

/// @nodoc
class __$$BookAppointmentResponseModelImplCopyWithImpl<$Res>
    extends
        _$BookAppointmentResponseModelCopyWithImpl<
          $Res,
          _$BookAppointmentResponseModelImpl
        >
    implements _$$BookAppointmentResponseModelImplCopyWith<$Res> {
  __$$BookAppointmentResponseModelImplCopyWithImpl(
    _$BookAppointmentResponseModelImpl _value,
    $Res Function(_$BookAppointmentResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? appointmentData = freezed,
    Object? status = freezed,
    Object? code = freezed,
  }) {
    return _then(
      _$BookAppointmentResponseModelImpl(
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        appointmentData: freezed == appointmentData
            ? _value.appointmentData
            : appointmentData // ignore: cast_nullable_to_non_nullable
                  as AppointmentModel?,
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
class _$BookAppointmentResponseModelImpl
    implements _BookAppointmentResponseModel {
  const _$BookAppointmentResponseModelImpl({
    this.message,
    @JsonKey(name: 'data') this.appointmentData,
    this.status,
    this.code,
  });

  factory _$BookAppointmentResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$BookAppointmentResponseModelImplFromJson(json);

  @override
  final String? message;
  @override
  @JsonKey(name: 'data')
  final AppointmentModel? appointmentData;
  @override
  final bool? status;
  @override
  final int? code;

  @override
  String toString() {
    return 'BookAppointmentResponseModel(message: $message, appointmentData: $appointmentData, status: $status, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentResponseModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.appointmentData, appointmentData) ||
                other.appointmentData == appointmentData) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, message, appointmentData, status, code);

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAppointmentResponseModelImplCopyWith<
    _$BookAppointmentResponseModelImpl
  >
  get copyWith =>
      __$$BookAppointmentResponseModelImplCopyWithImpl<
        _$BookAppointmentResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookAppointmentResponseModelImplToJson(this);
  }
}

abstract class _BookAppointmentResponseModel
    implements BookAppointmentResponseModel {
  const factory _BookAppointmentResponseModel({
    final String? message,
    @JsonKey(name: 'data') final AppointmentModel? appointmentData,
    final bool? status,
    final int? code,
  }) = _$BookAppointmentResponseModelImpl;

  factory _BookAppointmentResponseModel.fromJson(Map<String, dynamic> json) =
      _$BookAppointmentResponseModelImpl.fromJson;

  @override
  String? get message;
  @override
  @JsonKey(name: 'data')
  AppointmentModel? get appointmentData;
  @override
  bool? get status;
  @override
  int? get code;

  /// Create a copy of BookAppointmentResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookAppointmentResponseModelImplCopyWith<
    _$BookAppointmentResponseModelImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
