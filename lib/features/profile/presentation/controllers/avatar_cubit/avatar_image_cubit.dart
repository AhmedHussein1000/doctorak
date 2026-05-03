import 'package:doctorak/core/functions/pick_avatar.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'avatar_image_state.dart';
export 'avatar_image_state.dart';

class AvatarImageCubit extends HydratedCubit<AvatarImageState> {
  AvatarImageCubit() : super(const Initial());

  Future<void> pickUserAvatar() async {
    final image = await pickAvatar();
    if (image != null) {
      emit(AvatarFileChanged(image));
    }
  }

  @override
  AvatarImageState? fromJson(Map<String, dynamic> json) {
    if (json['path'] != null) {
      return AvatarFileChanged(json['path'] as String);
    }
    return const Initial();
  }

  @override
  Map<String, dynamic>? toJson(AvatarImageState state) {
    return state.when(
      initial: () => null,
      avatarFileChanged: (path) => {'path': path},
    );
  }
}
