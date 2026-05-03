// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationItemModelImpl _$$NotificationItemModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationItemModelImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  body: json['body'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  isRead: json['isRead'] as bool? ?? false,
  type: $enumDecode(_$NotificationTypeEnumMap, json['type']),
);

Map<String, dynamic> _$$NotificationItemModelImplToJson(
  _$NotificationItemModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'createdAt': instance.createdAt.toIso8601String(),
  'isRead': instance.isRead,
  'type': _$NotificationTypeEnumMap[instance.type]!,
};

const _$NotificationTypeEnumMap = {
  NotificationType.bookingConfirmation: 'bookingConfirmation',
  NotificationType.appointmentReminder: 'appointmentReminder',
};
