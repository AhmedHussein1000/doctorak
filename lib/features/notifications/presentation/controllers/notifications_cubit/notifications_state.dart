import 'package:doctorak/features/notifications/data/models/notification_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_state.freezed.dart';
part 'notifications_state.g.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const NotificationsState._(); 
  const factory NotificationsState({
    @Default([]) List<NotificationItemModel> notifications,
  }) = _NotificationsState;

  factory NotificationsState.fromJson(Map<String, dynamic> json) =>
      _$NotificationsStateFromJson(json);

  int get unreadCount => notifications.where((n) => !n.isRead).length;
}

