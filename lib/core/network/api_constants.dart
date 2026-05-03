class ApiConstants {
  ApiConstants._();
  // base url
  static const String baseUrl = 'https://vcare.integration25.com/api';
  // endpoints
  static const String signup = '/auth/register';
  static const String login = '/auth/login';
  static const String logout = '/auth/logout';
  static const String allSpecializations = '/specialization/index';
  static const String allDoctors = '/doctor/index';
  static String searchDoctors(String query) =>
      '/doctor/doctor-search?name=$query';
  static const String userProfile = '/user/profile';
  static const String allCities = '/city/index';
  static String doctorsByCity(int cityId) =>
      '/doctor/doctor-filter?city=$cityId';
  static const String bookAppointment = '/appointment/store';
  static const String myAppointments = '/appointment/index';
}
