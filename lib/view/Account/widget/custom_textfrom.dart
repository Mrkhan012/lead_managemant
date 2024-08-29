import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/theme.dart';

class SearchField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged onChanged;

  const SearchField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.h,
      width: 328.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: const Color(0xFFE7D2FF)),
        color: const Color(0xFFFAF6FF),
      ),
      child: Center(
        child: TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search here...',
            hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14.sp,
                  color: const Color(
                      0xFFB9B9B9), // Adjust hint text color if needed
                ),
            suffixIcon: Image.asset(
              'assets/images/search.png',
              height: 20.h, // Adjust icon size as needed
              width: 20.w, // Adjust icon size as needed
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 4, // Adjust vertical padding to center the hint text
            ),
          ),
        ),
      ),
    );
  }
}
