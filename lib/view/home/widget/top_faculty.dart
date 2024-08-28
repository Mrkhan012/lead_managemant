import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/faculty_edit_profile.dart';

class TopFaculty extends StatelessWidget {
  const TopFaculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AccountScreenText.facultyTitle,
              style: theme.textTheme.labelMedium!
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8.h),
            Text(
              AccountScreenText.addToppersInfo,
              style: theme.textTheme.bodySmall!
                  .copyWith(fontSize: 14.sp), // Responsive font size
            ),
            SizedBox(height: 16.h), // Responsive height
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                final titles = [
                  AccountScreenText.pathanAfroz,
                  AccountScreenText.afrzPathan,
                ];
                return buildListItem(
                  context,
                  titles[index],
                  AccountScreenText.highestCGPA,
                  'assets/images/pro.jpg',
                );
              },
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const FacultyEditProfile(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h,
                      ),
                      backgroundColor: const Color(0xFF7D23E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            12.r), // Responsive border radius
                      ),
                    ),
                    child: Text(
                      AccountScreenText.addNewStudentButton,
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

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
                  Text(subtitle,
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 12.sp)),
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
                    AccountScreenText.english,
                    const Color(0xFFE8FFF2),
                  ),
                  SizedBox(width: 4.w), // Adjusted for ScreenUtil
                  buildSubtitleContainer(
                    AccountScreenText.math,
                    const Color(0xFFFFEBEB),
                  ),
                  SizedBox(width: 4.w), // Adjusted for ScreenUtil
                  buildSubtitleContainer(
                    AccountScreenText.science,
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
                builder: (context) => const FacultyEditProfile(),
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
        padding: EdgeInsets.all(2.0.sp),
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
}
