import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/topper_profile_edit.dart';

Widget buildListItem(
  BuildContext context,
  String title,
  String subtitle,
  String imagePath,
) {
  return Card(
    elevation: 2,
    color: Colors.white,
    margin: EdgeInsets.all(8.w), // Adjusted for ScreenUtil
    child: ListTile(
      leading: CircleAvatar(
        radius: 30.r, // Adjusted for ScreenUtil
        backgroundImage: AssetImage(imagePath),
      ),
      title: Row(
        children: [
          Text(title,
              style: theme.textTheme.labelMedium!.copyWith(fontSize: 16.sp)),
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 4.h), // Adjusted for ScreenUtil
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.badge,
                  size: 16.w, // Adjusted for ScreenUtil
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                Text("70% CGPA",
                    style:
                        theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
              ],
            ),
            SizedBox(height: 8.h), // Adjusted for ScreenUtil
            Row(
              children: [
                Icon(
                  Icons.book_outlined,
                  size: 16.w, // Adjusted for ScreenUtil
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'English',
                  const Color(0xFFAFFFD0),
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'Math',
                  const Color(0xFFFFD8D8),
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'Science',
                  const Color(0xFFFFEFB4),
                ),
              ],
            ),
          ],
        ),
      ),
      trailing: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TopperProfileEdit(),
            ),
          );
        },
        child: SvgPicture.asset("assets/icon/edit-2.svg"),
      ),
    ),
  );
}

Widget buildSubtitleContainer(String label, Color color) {
  return Container(
    height: 24.h, // Adjusted for ScreenUtil
    width: 48.w, // Adjusted for ScreenUtil
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12.r), // Adjusted for ScreenUtil
    ),
    child: Center(
      child: Text(
        label,
        style: TextStyle(
            fontSize: 10.sp, color: Colors.black), // Adjusted for ScreenUtil
      ),
    ),
  );
}
