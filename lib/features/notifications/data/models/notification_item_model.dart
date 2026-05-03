import 'package:doctorak/core/enums/notification_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_item_model.freezed.dart';
part 'notification_item_model.g.dart';

@freezed
class NotificationItemModel with _$NotificationItemModel {
  const factory NotificationItemModel({
    required String id,
    required String title,
    required String body,
    required DateTime createdAt,
    @Default(false) bool isRead,
    required NotificationType type,
  }) = _NotificationItemModel;

  factory NotificationItemModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemModelFromJson(json);
}
