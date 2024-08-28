import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/topper_profile_edit.dart';

Widget buildListItem(
  BuildContext context,
  String title,
  String subtitle,
  String imagePath,
) {
  return Card(
    elevation: 1,
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
              style: theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
        ],
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(top: 4.h), // Adjusted for ScreenUtil
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.award,
                  height: 14.h,
                  width: 14.w,
                ),

                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                Text("70% CGPA",
                    style:
                        theme.textTheme.labelMedium!.copyWith(fontSize: 12.sp)),
              ],
            ),
            SizedBox(height: 4.h), // Adjusted for ScreenUtil
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.book,
                  height: 14.h,
                  width: 14.w,
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'English',
                  const Color(0xFFE8FFF2),
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'Math',
                  const Color(0xFFFFEBEB),
                ),
                SizedBox(width: 4.w), // Adjusted for ScreenUtil
                buildSubtitleContainer(
                  'Science',
                  const Color(0xFFFFFBEC),
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
        child: SvgPicture.asset(
          AppImages.edit,
          height: 24.h,
          width: 24.w,
        ),
      ),
    ),
  );
}

Widget buildSubtitleContainer(String label, Color color) {
  return Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12.r),
    ),
    child: Padding(
      padding: EdgeInsets.all(4.0.sp),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 10.sp,
              color: const Color(0xFF525251),
              fontFamily: "Avenir",
              fontWeight: FontWeight.w500),
        ),
      ),
    ),
  );
}
