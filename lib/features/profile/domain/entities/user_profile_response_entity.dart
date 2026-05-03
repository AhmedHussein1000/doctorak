import 'package:doctorak/features/profile/domain/entities/user_profile_entity.dart';

class UserProfileResponseEntity {
  final List<UserProfileEntity?>? users;

  UserProfileResponseEntity({required this.users});
}