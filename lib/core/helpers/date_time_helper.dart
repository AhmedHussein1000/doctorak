import 'package:intl/intl.dart';

class DateTimeHelper {
  DateTimeHelper._();

  static final DateFormat _dateFormat = DateFormat('EEEE, MMMM d, yyyy h:mm a');

  static DateTime? parseAppointmentTime(String appointmentTime) {
    try {
      return _dateFormat.parse(appointmentTime);
    } catch (_) {}
    return null;
  }

  static String formatTime(String? appointmentTime) {
    if (appointmentTime == null) return '';
    final dt = parseAppointmentTime(appointmentTime);
    if (dt == null) return appointmentTime;
    return DateFormat('h:mm a').format(dt);
  }

  static String formatDateTime(String? appointmentTime) {
    if (appointmentTime == null) return '';
    final dt = parseAppointmentTime(appointmentTime);
    if (dt == null) return appointmentTime;
    return '${DateFormat('MMM d').format(dt)} at ${DateFormat('h:mm a').format(dt)}';
  }

  static String formatDate(DateTime date) {
    return DateFormat('EEEE, dd MMM yyyy').format(date);
  }

  static String getShortDayName(DateTime date) {
    return DateFormat('E').format(date);
  }

  static DateTime getReminderDateTime(String? appointmentTime) {
    final appointmentDate =
        DateTimeHelper.parseAppointmentTime(appointmentTime ?? '');
    if (appointmentDate == null) return DateTime.now();
    return DateTime(
      appointmentDate.year,
      appointmentDate.month,
      appointmentDate.day,
      8,
      0,
      0,
    );
  }
}
