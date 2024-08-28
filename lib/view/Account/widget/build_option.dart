import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/theme.dart';

Widget buildOption({
  required String title,
  required String subtitle,
  required String leadingSvgPath, // SVG file path
  required IconData trailingIcon,
  Color? borderColor, // Optional border color
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 16.w),
    padding: EdgeInsets.all(16.sp),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.r),
      border: borderColor != null
          ? Border.all(color: borderColor)
          : null, // Conditional border
    ),
    child: Row(
      children: [
        Image.asset(
          leadingSvgPath,
          height: 35.h,
          width: 35.w,
          // Ensures the image scales properly within the bounds
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    fontSize: 14.sp,
                  )),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall!.copyWith(
                  fontSize: 12.sp,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Icon(trailingIcon, color: const Color(0xFF292D32), size: 20),
      ],
    ),
  );
}
