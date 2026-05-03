class AppConstants {
  AppConstants._();
  // App Name
  static const String appName = 'docdoc';
  // Obscure Text Keys
  static const String loginPasswordObscureTextKey = 'loginPassObscureTextkey';
  static const String signupPasswordObscureTextKey = 'signupPassObscureTextkey';
  static const String signupConfirmPasswordObscureTextKey =
      'signupConfirmPassObscureTextkey';
  // Error Messages
  static const String unknownError = 'Something went wrong';
  // Unknown Name and Email
  static const String unknownName = 'unknown name';
  static const String unknownEmail = 'unknown email';
// notifications content
  static const String bookingConfirmationTitle = '✅ Appointment Booked!';
  static const String appointmentReminderTitle = '🔔 Appointment Today';
  static String bookingConfirmationBody(String doctorName, String dateTime) =>
      'Your appointment with Dr. $doctorName on $dateTime has been confirmed.';
  static String appointmentReminderBody(String doctorName, String time) =>
      'Reminder: You have an appointment with Dr. $doctorName at $time today.';
}
