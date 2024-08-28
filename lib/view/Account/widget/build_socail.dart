import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/theme.dart';

Widget buildbutton({
  required String title,
  required String leadingSvgPath, // SVG file path
  Color? borderColor, // Optional border color
}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.symmetric(
      horizontal: 16.w,
    ),
    padding: EdgeInsets.all(16.sp),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12.r),
      border: borderColor != null
          ? Border.all(color: borderColor)
          : null, // Conditional border
    ),
    child: Row(
      children: [
        Center(
          child: SvgPicture.asset(
            leadingSvgPath,
            height: 28.h,
            width: 28.w,
            fit: BoxFit
                .contain, // Ensures the image scales properly within the bounds
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: theme.textTheme.bodyLarge!.copyWith(fontSize: 14.sp)),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Add your onPressed callback here
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: const Color(0xFF7D23E0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  4.0.r), // Adjust the border radius as needed
              side: const BorderSide(color: Color(0xFF7D23E0)), // Border color
            ),
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
                vertical: 12.0, horizontal: 16.0), // Button background color
          ),
          child: Text('Follow us',
              style: theme.textTheme.bodyLarge!.copyWith(
                  fontSize: 12.sp,
                  fontFamily: "avenirr",
                  color: const Color(
                    0xFF7D23E0,
                  )) // Text color
              ),
        )
      ],
    ),
  );
}
