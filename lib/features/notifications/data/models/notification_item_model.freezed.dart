// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NotificationItemModel _$NotificationItemModelFromJson(
  Map<String, dynamic> json,
) {
  return _NotificationItemModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationItemModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  NotificationType get type => throw _privateConstructorUsedError;

  /// Serializes this NotificationItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationItemModelCopyWith<NotificationItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemModelCopyWith<$Res> {
  factory $NotificationItemModelCopyWith(
    NotificationItemModel value,
    $Res Function(NotificationItemModel) then,
  ) = _$NotificationItemModelCopyWithImpl<$Res, NotificationItemModel>;
  @useResult
  $Res call({
    String id,
    String title,
    String body,
    DateTime createdAt,
    bool isRead,
    NotificationType type,
  });
}

/// @nodoc
class _$NotificationItemModelCopyWithImpl<
  $Res,
  $Val extends NotificationItemModel
>
    implements $NotificationItemModelCopyWith<$Res> {
  _$NotificationItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? createdAt = null,
    Object? isRead = null,
    Object? type = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            body: null == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            isRead: null == isRead
                ? _value.isRead
                : isRead // ignore: cast_nullable_to_non_nullable
                      as bool,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as NotificationType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NotificationItemModelImplCopyWith<$Res>
    implements $NotificationItemModelCopyWith<$Res> {
  factory _$$NotificationItemModelImplCopyWith(
    _$NotificationItemModelImpl value,
    $Res Function(_$NotificationItemModelImpl) then,
  ) = __$$NotificationItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String title,
    String body,
    DateTime createdAt,
    bool isRead,
    NotificationType type,
  });
}

/// @nodoc
class __$$NotificationItemModelImplCopyWithImpl<$Res>
    extends
        _$NotificationItemModelCopyWithImpl<$Res, _$NotificationItemModelImpl>
    implements _$$NotificationItemModelImplCopyWith<$Res> {
  __$$NotificationItemModelImplCopyWithImpl(
    _$NotificationItemModelImpl _value,
    $Res Function(_$NotificationItemModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? createdAt = null,
    Object? isRead = null,
    Object? type = null,
  }) {
    return _then(
      _$NotificationItemModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        body: null == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        isRead: null == isRead
            ? _value.isRead
            : isRead // ignore: cast_nullable_to_non_nullable
                  as bool,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as NotificationType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationItemModelImpl implements _NotificationItemModel {
  const _$NotificationItemModelImpl({
    required this.id,
    required this.title,
    required this.body,
    required this.createdAt,
    this.isRead = false,
    required this.type,
  });

  factory _$NotificationItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationItemModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  @override
  final DateTime createdAt;
  @override
  @JsonKey()
  final bool isRead;
  @override
  final NotificationType type;

  @override
  String toString() {
    return 'NotificationItemModel(id: $id, title: $title, body: $body, createdAt: $createdAt, isRead: $isRead, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, body, createdAt, isRead, type);

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationItemModelImplCopyWith<_$NotificationItemModelImpl>
  get copyWith =>
      __$$NotificationItemModelImplCopyWithImpl<_$NotificationItemModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationItemModelImplToJson(this);
  }
}

abstract class _NotificationItemModel implements NotificationItemModel {
  const factory _NotificationItemModel({
    required final String id,
    required final String title,
    required final String body,
    required final DateTime createdAt,
    final bool isRead,
    required final NotificationType type,
  }) = _$NotificationItemModelImpl;

  factory _NotificationItemModel.fromJson(Map<String, dynamic> json) =
      _$NotificationItemModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get body;
  @override
  DateTime get createdAt;
  @override
  bool get isRead;
  @override
  NotificationType get type;

  /// Create a copy of NotificationItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationItemModelImplCopyWith<_$NotificationItemModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
