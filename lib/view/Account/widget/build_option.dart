import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/theme.dart';

Widget buildOption({
  required String title,
  required String subtitle,
  required String leadingSvgPath, // SVG file path
  required IconData trailingIcon,
  Color? borderColor, // Optional border color
  bool showAdditionalRow = false, // Optional flag to show additional row
  Color? additionalRowColor, // Optional color for additional row background
  Color? additionalRowTextColor, // Optional color for additional row text
  String? additionalRowText, // Optional text for additional row
}) {
  Color defaultAdditionalRowColor = Colors.red;
  Color defaultAdditionalRowTextColor = Colors.white;

  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 8.w),
    padding: EdgeInsets.all(16.sp),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.r),
      border: borderColor != null
          ? Border.all(color: borderColor)
          : null, // Conditional border
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
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
                  Text(
                    title,
                    style: theme.textTheme.bodyLarge!.copyWith(
                      fontSize: 14.sp,
                    ),
                  ),
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
            SizedBox(width: 8.w),
            if (showAdditionalRow)
              Container(
                margin: EdgeInsets.only(top: 12.h),
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: additionalRowColor ?? defaultAdditionalRowColor,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Text(
                  additionalRowText ?? "Default Text",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 12.sp,
                    color:
                        additionalRowTextColor ?? defaultAdditionalRowTextColor,
                  ),
                ),
              ),
            Icon(trailingIcon, color: const Color(0xFF292D32), size: 20),
          ],
        ),
      ],
    ),
  );
}
