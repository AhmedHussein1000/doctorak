import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/helpers/extensions.dart';

/// get specialization image from name because api return  one image for all specializations
String getSpecializationImage(String? specializationName) {
  if (specializationName.isNullOrEmpty()) {
    return Assets.imagesSpecializationsDefaultSpeciality;
  }

  final normalizedName = specializationName!.trim().toLowerCase();

  const specializationImages = <String, String>{
    'cardiology': Assets.imagesSpecializationsCardiology,
    'dermatology': Assets.imagesSpecializationsDermatology,
    'neurology': Assets.imagesSpecializationsNeurology,
    'orthopedics': Assets.imagesSpecializationsOrthopedics,
    'pediatrics': Assets.imagesSpecializationsPediatrics,
    'gynecology': Assets.imagesSpecializationsGynecology,
    'ophthalmology': Assets.imagesSpecializationsOphthalmology,
    'urology': Assets.imagesSpecializationsUrology,
    'gastroenterology': Assets.imagesSpecializationsGastroenterology,
    'psychiatry': Assets.imagesSpecializationsPsychiatry,
  };

  return specializationImages[normalizedName] ??
      Assets.imagesSpecializationsDefaultSpeciality;
}
