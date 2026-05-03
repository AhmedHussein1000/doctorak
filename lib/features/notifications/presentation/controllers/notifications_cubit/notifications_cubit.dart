import 'package:doctorak/core/enums/notification_type.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:doctorak/features/notifications/data/models/notification_item_model.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_state.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:doctorak/core/helpers/date_time_helper.dart';

class NotificationsCubit extends HydratedCubit<NotificationsState> {
  NotificationsCubit() : super(const NotificationsState());

  void addBookingConfirmation(AppointmentEntity appointment) {
    final doctorName = appointment.doctor?.name ?? 'your doctor';
    final dateTime = DateTimeHelper.formatDateTime(appointment.appointmentTime);
    
    final item = NotificationItemModel(
      id: (appointment.id ?? 0).toString(),
      title: AppConstants.bookingConfirmationTitle,
      body: AppConstants.bookingConfirmationBody(doctorName, dateTime),
      createdAt: DateTime.now(),
      type: NotificationType.bookingConfirmation,
    );
    emit(state.copyWith(notifications: [item, ...state.notifications]));
  }

  void addAppointmentReminder(AppointmentEntity appointment) {
    if (appointment.id == null) return;
    final doctorName = appointment.doctor?.name ?? 'your doctor';
    final time = DateTimeHelper.formatTime(appointment.appointmentTime);
    final reminderAt = DateTimeHelper.getReminderDateTime(appointment.appointmentTime);

    final item = NotificationItemModel(
      id: (appointment.id! + 10000).toString(),
      title: AppConstants.appointmentReminderTitle,
      body: AppConstants.appointmentReminderBody(doctorName, time),
      createdAt: reminderAt,
      type: NotificationType.appointmentReminder,
    );
    emit(state.copyWith(notifications: [item, ...state.notifications]));
  }


  void markAsRead(String notificationId) {
    final updated = state.notifications.map((n) {
      if (n.id == notificationId) return n.copyWith(isRead: true);
      return n;
    }).toList();
    emit(state.copyWith(notifications: updated));
  }

  void markAllAsRead() {
    final updated = state.notifications
        .map((n) => n.isRead ? n : n.copyWith(isRead: true))
        .toList();
    emit(state.copyWith(notifications: updated));
  }

  @override
  NotificationsState? fromJson(Map<String, dynamic> json) {
    try {
      return NotificationsState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(NotificationsState state) => state.toJson();
}

