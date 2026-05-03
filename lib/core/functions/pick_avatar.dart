import 'package:doctorak/core/di/service_locator.dart';
import 'package:image_picker/image_picker.dart';


Future<String?> pickAvatar() async {
  final picker = getIt<ImagePicker>();
  final image = await picker.pickImage(source: ImageSource.gallery);
  if (image != null) {
    return image.path;
  } 
  return null;
}
