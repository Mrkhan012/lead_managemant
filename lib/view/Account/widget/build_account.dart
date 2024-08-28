import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/main.dart';
import 'package:lead_management/utils/theme.dart';

Widget buildAccountCard({
  required String title,
  required String subtitle,
  required String imagePath,
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
    padding: EdgeInsets.all(16.sp),
    decoration: BoxDecoration(
      color: const Color(0xFFFBFBFB),
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imagePath),
            ),
            Positioned(
              bottom: -5.h,
              right: 0,
              child: Image.asset(
                "assets/images/blue_tick.png",
                height: 24.h,
                width: 24.w,
              ),
            ),
          ],
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp), // Adjust text style as needed
              ),
              Text(subtitle,
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontSize: 12.sp) // Adjust text style as needed
                  ),
            ],
          ),
        ),
        SvgPicture.asset(
          "assets/icon/edit.svg",
          height: 20,
          width: 20,
        ),
      ],
    ),
  );
}
