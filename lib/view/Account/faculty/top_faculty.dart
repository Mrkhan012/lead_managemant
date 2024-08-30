import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/widget/custom_textfrom.dart';
import 'package:lead_management/view/Account/faculty/faculty_edit_profile.dart';

class TopFaculty extends StatelessWidget {
  const TopFaculty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          AccountScreenText.facultyTitle,
          style: theme.textTheme.labelMedium!
              .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(1.0), // Set height of the divider
          child: Container(
            color: const Color(0xFFEEEEEE), // Divider color
            height: 1.0, // Divider height
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.w, right: 8.w),
                      child: SearchField(
                        borderColor: const Color(0xFFFAF6FF),
                        backgroundColor: const Color(0xFFE7D2FF),
                        controller: TextEditingController(),
                        onChanged: (value) {
                          // Handle search text changes here
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 4.h),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      final titles = [
                        'Pathan Afroz',
                        'Pathan Afroz',
                        'Pathan Afroz',
                        'Pathan Afroz',
                      ];
                      return buildListItem(
                        context,
                        titles[index],
                        'B tech.',
                        'assets/images/pro.jpg',
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 64.h,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w),
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
                      backgroundColor:
                          const Color(0xFF7D23E0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      'Add New Faculty',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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
        ), // Adjusted for ScreenUtil
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.r, // Adjusted for ScreenUtil
            backgroundImage: AssetImage(imagePath),
          ),
          title: Row(
            children: [
              Text(title,
                  style: theme.textTheme.bodyLarge!.copyWith(fontSize: 14.sp)),
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
                      AppImages.teacher,
                      height: 14.h,
                      width: 14.w,
                    ),

                    SizedBox(width: 4.w), // Adjusted for ScreenUtil
                    Text(subtitle,
                        style: theme.textTheme.bodyLarge!
                            .copyWith(fontSize: 12.sp)),
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
      ));
}

Widget buildSubtitleContainer(String label, Color color) {
  return Container(
    width: 45.w,
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
