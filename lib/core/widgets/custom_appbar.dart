import 'package:doctorak/core/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../themes/app_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showBackButton;
  final VoidCallback? onBackPressed;
  final VoidCallback? onActionPressed;
  final bool showActionButton;
  const CustomAppBar({
    super.key,
    required this.title,
    this.showBackButton = true,
    this.onBackPressed,
    this.onActionPressed,
    this.showActionButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        centerTitle: true,
        scrolledUnderElevation: 0,
        leadingWidth: 48.w,
        leading: showBackButton
            ? Center(
                child: _customLeadingOrActionIcon(
                  context,
                  onTap:
                      onBackPressed ??
                      () {
                        if (context.canPop()) {
                          context.pop();
                        } else {
                          context.goNamed(RouteNames.homeName);
                        }
                      },
                  icon: Icons.arrow_back_ios_new,
                ),
              )
            : null,
        title: Text(title, style: Styles.font18SemiBold),
        actions: showActionButton
            ? [
                Center(
                  child: _customLeadingOrActionIcon(
                    context,
                    onTap: onActionPressed,
                    icon: Icons.more_horiz,
                  ),
                ),
              ]
            : null,
      ),
    );
  }

  GestureDetector _customLeadingOrActionIcon(
    BuildContext context, {
    required void Function()? onTap,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40.w,
        height: 40.w,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(color: Color(0xFFECECEC)),
          ),
        ),
        child: Icon(icon, size: 18.sp),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
