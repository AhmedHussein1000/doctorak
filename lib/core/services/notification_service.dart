import 'package:doctorak/core/router/app_router.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:doctorak/core/helpers/date_time_helper.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

@pragma('vm:entry-point')
void _onBackgroundNotificationTapped(NotificationResponse response) {
  router.pushNamed(RouteNames.notificationsName);
}

class NotificationService {
  NotificationService._();

  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  static const String _channelId = 'doctorak_appointments';
  static const String _channelName = 'Appointment Notifications';
  static const String _channelDescription =
      'Notifications for appointment booking and reminders';

  static const int _reminderIdOffset = 10000;

  Future<void> init() async {
    tz.initializeTimeZones();
    await _setLocalTimezone();

    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    await _plugin.initialize(
      settings: const InitializationSettings(
        android: androidSettings,
        iOS: iosSettings,
      ),
      onDidReceiveNotificationResponse: _onNotificationTapped,
      onDidReceiveBackgroundNotificationResponse:
          _onBackgroundNotificationTapped,
    );

    await _createAndroidChannel();
    await _requestPermissions();
    await _handleTerminatedLaunch();
  }

  Future<void> showBookingConfirmation(AppointmentEntity appointment) async {
    final doctorName = appointment.doctor?.name ?? 'your doctor';
    final dateTime = DateTimeHelper.formatDateTime(appointment.appointmentTime);

    await _plugin.show(
      id: appointment.id ?? 0,
      title: AppConstants.bookingConfirmationTitle,
      body: AppConstants.bookingConfirmationBody(doctorName, dateTime),
      notificationDetails: _notificationDetails(),
    );
  }

  Future<void> scheduleAppointmentReminder(
    AppointmentEntity appointment,
  ) async {
    if (appointment.id == null || appointment.appointmentTime == null) return;

    final scheduledDate = _getReminderDateTime(appointment.appointmentTime!);
    if (scheduledDate == null) return;

    if (scheduledDate.isBefore(tz.TZDateTime.now(tz.local))) return;

    final doctorName = appointment.doctor?.name ?? 'your doctor';
    final time = DateTimeHelper.formatTime(appointment.appointmentTime);

    await _plugin.zonedSchedule(
      id: appointment.id! + _reminderIdOffset,
      title: AppConstants.appointmentReminderTitle,
      body: AppConstants.appointmentReminderBody(doctorName, time),
      scheduledDate: scheduledDate,
      notificationDetails: _notificationDetails(),
      androidScheduleMode: AndroidScheduleMode.alarmClock,
    );
  }

  Future<void> cancelReminder(int appointmentId) async {
    await _plugin.cancel(id: appointmentId + _reminderIdOffset);
  }

  Future<void> cancelAll(int appointmentId) async {
    await _plugin.cancel(id: appointmentId);
    await _plugin.cancel(id: appointmentId + _reminderIdOffset);
  }

  Future<void> _createAndroidChannel() async {
    const channel = AndroidNotificationChannel(
      _channelId,
      _channelName,
      description: _channelDescription,
      importance: Importance.high,
    );

    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);
  }

  Future<void> _requestPermissions() async {
    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.requestNotificationsPermission();

    await _plugin
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >()
        ?.requestPermissions(alert: true, badge: true, sound: true);
  }

  NotificationDetails _notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails(
        _channelId,
        _channelName,
        channelDescription: _channelDescription,
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
      ),
      iOS: DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
      ),
    );
  }

  tz.TZDateTime? _getReminderDateTime(String appointmentTime) {
    final parsed = DateTimeHelper.parseAppointmentTime(appointmentTime);
    if (parsed == null) return null;
    return tz.TZDateTime(
      tz.local,
      parsed.year,
      parsed.month,
      parsed.day,
      8,
      0,
      0,
    );
  }

  Future<void> _setLocalTimezone() async {
    try {
      final timeZoneInfo = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(timeZoneInfo.identifier));
    } catch (_) {
      tz.setLocalLocation(tz.UTC);
    }
  }

  void _onNotificationTapped(NotificationResponse response) {
    router.pushNamed(RouteNames.notificationsName);
  }

  Future<void> _handleTerminatedLaunch() async {
    final launchDetails = await _plugin.getNotificationAppLaunchDetails();
    if (launchDetails?.didNotificationLaunchApp ?? false) {
      router.pushNamed(RouteNames.notificationsName);
    }
  }
}
