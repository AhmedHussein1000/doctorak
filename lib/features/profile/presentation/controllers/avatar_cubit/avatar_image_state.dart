import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_image_state.freezed.dart';

@freezed
class AvatarImageState with _$AvatarImageState {
  const factory AvatarImageState.initial() = Initial;
  const factory AvatarImageState.avatarFileChanged(String? path) = AvatarFileChanged;
}
