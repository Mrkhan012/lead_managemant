import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/theme.dart';

Widget buildAccountCard({
  required String title,
  required String subtitle,
  required String imagePath,
}) {
  return Container(
    height: 90,
    width: double.infinity,
    margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(20),
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
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/blue_tick.png",
                height: 20,
                width: 20,
              ),
            ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16), // Adjust text style as needed
              ),
              Text(subtitle,
                  style: theme.textTheme.bodySmall!
                      .copyWith(fontSize: 14) // Adjust text style as needed
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
