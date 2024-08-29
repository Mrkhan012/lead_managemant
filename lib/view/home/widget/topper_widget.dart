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
      elevation: 0, // Ensure elevation is 0 to use custom shadow
      color: Colors.white,
      margin: EdgeInsets.all(8.w), // Adjusted for ScreenUtil
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r), // Adjusted for ScreenUtil
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r), // Adjusted for ScreenUtil
          boxShadow: [
            BoxShadow(
              color: const Color(0xFF979797).withOpacity(0.1),
              offset: Offset(4.w, 4.w), // X and Y offset
              blurRadius: 4.0, // Adjusted blur radius
            ),
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.r, // Adjusted for ScreenUtil
            backgroundImage: AssetImage(imagePath),
          ),
          title: Row(
            children: [
              Text(title,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(fontSize: 14.sp, fontFamily: "avenir")),
            ],
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(top: 4.h), // Adjusted for ScreenUtil
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      AppImages.award,
                      height: 14.h,
                      width: 14.w,
                    ),

                    SizedBox(width: 4.w), // Adjusted for ScreenUtil
                    Text("70% CGPA",
                        style: theme.textTheme.bodyLarge!
                            .copyWith(fontSize: 12.sp, fontFamily: "avenir")),
                  ],
                ),
                SizedBox(height: 4.h), // Adjusted for ScreenUtil
                Row(
                  children: [
                    Image.asset(
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
                      'Maths',
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
      ));
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
