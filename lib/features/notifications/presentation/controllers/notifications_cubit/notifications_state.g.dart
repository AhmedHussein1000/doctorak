// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsStateImpl _$$NotificationsStateImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationsStateImpl(
  notifications:
      (json['notifications'] as List<dynamic>?)
          ?.map(
            (e) => NotificationItemModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$$NotificationsStateImplToJson(
  _$NotificationsStateImpl instance,
) => <String, dynamic>{'notifications': instance.notifications};
