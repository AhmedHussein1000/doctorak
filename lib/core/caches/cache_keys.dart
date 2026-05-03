bool? isSkippedOnBoarding;
String? userToken;

abstract class CacheKeys {
  CacheKeys._();
  static const String onBoarding = 'onBoarding';
  static const String token = 'userToken';
  static const String userName = 'userName';
  static const String userEmail = 'userEmail';
  static const String userPhone = 'userPhone';
}
