import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../custom_circle_progress_indicator.dart';


class CustomDoctorImage extends StatelessWidget {
  const CustomDoctorImage({
    super.key, this.width, this.height, this.doctorImageUrl,
  });
 final double? width;
 final double? height;
 final String? doctorImageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: CachedNetworkImage(
        width:width ?? 110.w,
        height: height ?? 110.h,
        imageUrl:
            doctorImageUrl ??'https://th.bing.com/th/id/OIP.DoNjt9rHHDi_2-x6F8WW6gHaHa?pid=ImgDet&w=174&h=174&c=7&dpr=1.5',
        fit: BoxFit.fill,
        placeholder: (context, url) =>
            const CustomCircleProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
