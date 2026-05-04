import 'dart:io';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserInfoHeader extends StatelessWidget {
  final String name;
  final bool allowEdit;
  final String? avatarPath;
  final VoidCallback? onEditTap;

  const UserInfoHeader({
    super.key,
    required this.name,
    this.allowEdit = false,
    this.avatarPath,
    this.onEditTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: 'profile_avatar',
          child: GestureDetector(
            onTap: allowEdit ? onEditTap : null,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 50.r,
                  backgroundColor: AppColors.primaryBlue.withValues(alpha: 0.1),
                  child: avatarPath != null
                      ? ClipOval(
                          child: Image.file(
                            File(avatarPath!),
                            width: 100.r,
                            height: 100.r,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 50.sp,
                          color: AppColors.primaryBlue,
                        ),
                ),
                allowEdit == true
                    ? CircleAvatar(
                        radius: 12.r,
                        backgroundColor: AppColors.primaryBlue,
                        child: Icon(
                          Icons.edit,
                          size: 16.sp,
                          color: Colors.white,
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
        ),
        SizedBox(height: 12.h),
        Text(name, style: Styles.font18SemiBold),
      ],
    );
  }
}
