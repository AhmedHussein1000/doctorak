// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) {
  return _AppointmentModel.fromJson(json);
}

/// @nodoc
mixin _$AppointmentModel {
  int? get id => throw _privateConstructorUsedError;
  DoctorModel? get doctor => throw _privateConstructorUsedError;
  PatientModel? get patient => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_time')
  String? get appointmentTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_end_time')
  String? get appointmentEndTime => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'appointment_price')
  int? get appointmentPrice => throw _privateConstructorUsedError;

  /// Serializes this AppointmentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppointmentModelCopyWith<AppointmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentModelCopyWith<$Res> {
  factory $AppointmentModelCopyWith(
    AppointmentModel value,
    $Res Function(AppointmentModel) then,
  ) = _$AppointmentModelCopyWithImpl<$Res, AppointmentModel>;
  @useResult
  $Res call({
    int? id,
    DoctorModel? doctor,
    PatientModel? patient,
    @JsonKey(name: 'appointment_time') String? appointmentTime,
    @JsonKey(name: 'appointment_end_time') String? appointmentEndTime,
    String? status,
    String? notes,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
  });

  $DoctorModelCopyWith<$Res>? get doctor;
  $PatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class _$AppointmentModelCopyWithImpl<$Res, $Val extends AppointmentModel>
    implements $AppointmentModelCopyWith<$Res> {
  _$AppointmentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctor = freezed,
    Object? patient = freezed,
    Object? appointmentTime = freezed,
    Object? appointmentEndTime = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? appointmentPrice = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int?,
            doctor: freezed == doctor
                ? _value.doctor
                : doctor // ignore: cast_nullable_to_non_nullable
                      as DoctorModel?,
            patient: freezed == patient
                ? _value.patient
                : patient // ignore: cast_nullable_to_non_nullable
                      as PatientModel?,
            appointmentTime: freezed == appointmentTime
                ? _value.appointmentTime
                : appointmentTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            appointmentEndTime: freezed == appointmentEndTime
                ? _value.appointmentEndTime
                : appointmentEndTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            appointmentPrice: freezed == appointmentPrice
                ? _value.appointmentPrice
                : appointmentPrice // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DoctorModelCopyWith<$Res>? get doctor {
    if (_value.doctor == null) {
      return null;
    }

    return $DoctorModelCopyWith<$Res>(_value.doctor!, (value) {
      return _then(_value.copyWith(doctor: value) as $Val);
    });
  }

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PatientModelCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientModelCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppointmentModelImplCopyWith<$Res>
    implements $AppointmentModelCopyWith<$Res> {
  factory _$$AppointmentModelImplCopyWith(
    _$AppointmentModelImpl value,
    $Res Function(_$AppointmentModelImpl) then,
  ) = __$$AppointmentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? id,
    DoctorModel? doctor,
    PatientModel? patient,
    @JsonKey(name: 'appointment_time') String? appointmentTime,
    @JsonKey(name: 'appointment_end_time') String? appointmentEndTime,
    String? status,
    String? notes,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
  });

  @override
  $DoctorModelCopyWith<$Res>? get doctor;
  @override
  $PatientModelCopyWith<$Res>? get patient;
}

/// @nodoc
class __$$AppointmentModelImplCopyWithImpl<$Res>
    extends _$AppointmentModelCopyWithImpl<$Res, _$AppointmentModelImpl>
    implements _$$AppointmentModelImplCopyWith<$Res> {
  __$$AppointmentModelImplCopyWithImpl(
    _$AppointmentModelImpl _value,
    $Res Function(_$AppointmentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? doctor = freezed,
    Object? patient = freezed,
    Object? appointmentTime = freezed,
    Object? appointmentEndTime = freezed,
    Object? status = freezed,
    Object? notes = freezed,
    Object? appointmentPrice = freezed,
  }) {
    return _then(
      _$AppointmentModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int?,
        doctor: freezed == doctor
            ? _value.doctor
            : doctor // ignore: cast_nullable_to_non_nullable
                  as DoctorModel?,
        patient: freezed == patient
            ? _value.patient
            : patient // ignore: cast_nullable_to_non_nullable
                  as PatientModel?,
        appointmentTime: freezed == appointmentTime
            ? _value.appointmentTime
            : appointmentTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        appointmentEndTime: freezed == appointmentEndTime
            ? _value.appointmentEndTime
            : appointmentEndTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        appointmentPrice: freezed == appointmentPrice
            ? _value.appointmentPrice
            : appointmentPrice // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppointmentModelImpl implements _AppointmentModel {
  const _$AppointmentModelImpl({
    this.id,
    this.doctor,
    this.patient,
    @JsonKey(name: 'appointment_time') this.appointmentTime,
    @JsonKey(name: 'appointment_end_time') this.appointmentEndTime,
    this.status,
    this.notes,
    @JsonKey(name: 'appointment_price') this.appointmentPrice,
  });

  factory _$AppointmentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppointmentModelImplFromJson(json);

  @override
  final int? id;
  @override
  final DoctorModel? doctor;
  @override
  final PatientModel? patient;
  @override
  @JsonKey(name: 'appointment_time')
  final String? appointmentTime;
  @override
  @JsonKey(name: 'appointment_end_time')
  final String? appointmentEndTime;
  @override
  final String? status;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'appointment_price')
  final int? appointmentPrice;

  @override
  String toString() {
    return 'AppointmentModel(id: $id, doctor: $doctor, patient: $patient, appointmentTime: $appointmentTime, appointmentEndTime: $appointmentEndTime, status: $status, notes: $notes, appointmentPrice: $appointmentPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppointmentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.doctor, doctor) || other.doctor == doctor) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.appointmentTime, appointmentTime) ||
                other.appointmentTime == appointmentTime) &&
            (identical(other.appointmentEndTime, appointmentEndTime) ||
                other.appointmentEndTime == appointmentEndTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.appointmentPrice, appointmentPrice) ||
                other.appointmentPrice == appointmentPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    doctor,
    patient,
    appointmentTime,
    appointmentEndTime,
    status,
    notes,
    appointmentPrice,
  );

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      __$$AppointmentModelImplCopyWithImpl<_$AppointmentModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppointmentModelImplToJson(this);
  }
}

abstract class _AppointmentModel implements AppointmentModel {
  const factory _AppointmentModel({
    final int? id,
    final DoctorModel? doctor,
    final PatientModel? patient,
    @JsonKey(name: 'appointment_time') final String? appointmentTime,
    @JsonKey(name: 'appointment_end_time') final String? appointmentEndTime,
    final String? status,
    final String? notes,
    @JsonKey(name: 'appointment_price') final int? appointmentPrice,
  }) = _$AppointmentModelImpl;

  factory _AppointmentModel.fromJson(Map<String, dynamic> json) =
      _$AppointmentModelImpl.fromJson;

  @override
  int? get id;
  @override
  DoctorModel? get doctor;
  @override
  PatientModel? get patient;
  @override
  @JsonKey(name: 'appointment_time')
  String? get appointmentTime;
  @override
  @JsonKey(name: 'appointment_end_time')
  String? get appointmentEndTime;
  @override
  String? get status;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'appointment_price')
  int? get appointmentPrice;

  /// Create a copy of AppointmentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppointmentModelImplCopyWith<_$AppointmentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
