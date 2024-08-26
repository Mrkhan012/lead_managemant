import 'package:flutter/material.dart';
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
    margin: const EdgeInsets.symmetric(horizontal: 16),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: borderColor != null
          ? Border.all(color: borderColor)
          : null, // Conditional border
    ),
    child: Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFFAF6FF),
          ),
          child: Center(
            child: SvgPicture.asset(
              leadingSvgPath,
              height: 20,
              width: 20,
              fit: BoxFit
                  .contain, // Ensures the image scales properly within the bounds
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: theme.textTheme.bodyLarge!.copyWith(fontSize: 14)),
              Text(subtitle,
                  style: theme.textTheme.bodySmall!.copyWith(fontSize: 10)),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Icon(trailingIcon, color: Colors.black, size: 20),
      ],
    ),
  );
}
