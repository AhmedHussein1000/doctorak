// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_appointment_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BookAppointmentRequestModel {
  @JsonKey(name: 'doctor_id')
  int get doctorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String get startTime => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

  /// Create a copy of BookAppointmentRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookAppointmentRequestModelCopyWith<BookAppointmentRequestModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookAppointmentRequestModelCopyWith<$Res> {
  factory $BookAppointmentRequestModelCopyWith(
    BookAppointmentRequestModel value,
    $Res Function(BookAppointmentRequestModel) then,
  ) =
      _$BookAppointmentRequestModelCopyWithImpl<
        $Res,
        BookAppointmentRequestModel
      >;
  @useResult
  $Res call({
    @JsonKey(name: 'doctor_id') int doctorId,
    @JsonKey(name: 'start_time') String startTime,
    String? notes,
  });
}

/// @nodoc
class _$BookAppointmentRequestModelCopyWithImpl<
  $Res,
  $Val extends BookAppointmentRequestModel
>
    implements $BookAppointmentRequestModelCopyWith<$Res> {
  _$BookAppointmentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookAppointmentRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? startTime = null,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            doctorId: null == doctorId
                ? _value.doctorId
                : doctorId // ignore: cast_nullable_to_non_nullable
                      as int,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookAppointmentRequestModelImplCopyWith<$Res>
    implements $BookAppointmentRequestModelCopyWith<$Res> {
  factory _$$BookAppointmentRequestModelImplCopyWith(
    _$BookAppointmentRequestModelImpl value,
    $Res Function(_$BookAppointmentRequestModelImpl) then,
  ) = __$$BookAppointmentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'doctor_id') int doctorId,
    @JsonKey(name: 'start_time') String startTime,
    String? notes,
  });
}

/// @nodoc
class __$$BookAppointmentRequestModelImplCopyWithImpl<$Res>
    extends
        _$BookAppointmentRequestModelCopyWithImpl<
          $Res,
          _$BookAppointmentRequestModelImpl
        >
    implements _$$BookAppointmentRequestModelImplCopyWith<$Res> {
  __$$BookAppointmentRequestModelImplCopyWithImpl(
    _$BookAppointmentRequestModelImpl _value,
    $Res Function(_$BookAppointmentRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookAppointmentRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = null,
    Object? startTime = null,
    Object? notes = freezed,
  }) {
    return _then(
      _$BookAppointmentRequestModelImpl(
        doctorId: null == doctorId
            ? _value.doctorId
            : doctorId // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BookAppointmentRequestModelImpl extends _BookAppointmentRequestModel {
  const _$BookAppointmentRequestModelImpl({
    @JsonKey(name: 'doctor_id') required this.doctorId,
    @JsonKey(name: 'start_time') required this.startTime,
    this.notes,
  }) : super._();

  @override
  @JsonKey(name: 'doctor_id')
  final int doctorId;
  @override
  @JsonKey(name: 'start_time')
  final String startTime;
  @override
  final String? notes;

  @override
  String toString() {
    return 'BookAppointmentRequestModel(doctorId: $doctorId, startTime: $startTime, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookAppointmentRequestModelImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorId, startTime, notes);

  /// Create a copy of BookAppointmentRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookAppointmentRequestModelImplCopyWith<_$BookAppointmentRequestModelImpl>
  get copyWith =>
      __$$BookAppointmentRequestModelImplCopyWithImpl<
        _$BookAppointmentRequestModelImpl
      >(this, _$identity);
}

abstract class _BookAppointmentRequestModel
    extends BookAppointmentRequestModel {
  const factory _BookAppointmentRequestModel({
    @JsonKey(name: 'doctor_id') required final int doctorId,
    @JsonKey(name: 'start_time') required final String startTime,
    final String? notes,
  }) = _$BookAppointmentRequestModelImpl;
  const _BookAppointmentRequestModel._() : super._();

  @override
  @JsonKey(name: 'doctor_id')
  int get doctorId;
  @override
  @JsonKey(name: 'start_time')
  String get startTime;
  @override
  String? get notes;

  /// Create a copy of BookAppointmentRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookAppointmentRequestModelImplCopyWith<_$BookAppointmentRequestModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
