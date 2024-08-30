// faculty_edit_profile.dart

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/widget/cutom_textfrom.dart';

class FacultyEditProfile extends StatelessWidget {
  const FacultyEditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      body: Padding(
        padding: EdgeInsets.all(12.0.w), // Adjusted with screen_util
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(AccountScreenText.profileImage,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(fontSize: 16.sp)),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                              radius: 50.r, // Adjusted with screen_util
                              backgroundColor: const Color(0xFFFBF7FF),
                              child: Image.asset(
                                "assets/icon/gallery.png",
                                height: 30.h,
                                width: 30.w,
                              )),
                          Positioned(
                            bottom: 0,
                            right: 6.w, // Adjusted with screen_util
                            child: CircleAvatar(
                              backgroundColor: const Color(0xFF7D23E0),
                              radius: 14.r, // Adjusted with screen_util
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 14.sp, // Adjusted with screen_util
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text(AccountScreenText.nameOfFaculty,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: 'Name',
                      onChanged: (value) {
                        print('Name: $value');
                      },
                    ),
                    SizedBox(height: 12.h),
                    Text(AccountScreenText.highestQualification,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: 'Course Name',
                      onChanged: (value) {
                        print('Name: $value');
                      },
                      suffixIcon: CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          CupertinoIcons.chevron_down,
                          color: Colors.black,
                          size: 16.sp,
                        ),
                        onPressed: () {
                          showBottomSheet(context);
                        },
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(AccountScreenText.selectTheSubject,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: 'Subject',
                      onChanged: (value) {
                        print('Name: $value');
                      },
                      suffixIcon: CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: Icon(
                          CupertinoIcons.chevron_down,
                          color: Colors.black,
                          size: 16.sp,
                        ),
                        onPressed: () {
                          showBottomSheet(context);
                        },
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Text(AccountScreenText.emailId,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: 'Enter Email',
                      onChanged: (value) {
                        print('Name: $value');
                      },
                    ),
                    SizedBox(height: 12.h),
                    Text(AccountScreenText.mobileNumber,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: '+91 0000000000',
                      onChanged: (value) {
                        print('Name: $value');
                      },
                    ),
                    SizedBox(height: 12.h),
                    Text(AccountScreenText.description,
                        style: theme.textTheme.labelMedium!
                            .copyWith(fontSize: 16.sp)),
                    SizedBox(height: 12.h),
                    Container(
                      width: double.infinity,
                      height: 120.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.white,
                        border: Border.all(color: const Color(0xFFEEEEEE)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0.w),
                        child: Text(
                          AccountScreenText.startWritingDescription,
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 48.h,
                  width: 160.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the screen on save
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        side:
                            const BorderSide(color: Colors.red), // Border color
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/trash.png",
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(
                          width: 8.w,
                        ), // Spacing between icon and text
                        Text(
                          AccountScreenText.delete,
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800,
                            color: Colors.red,
                            fontFamily: "avenir",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 48.h,
                  width: 160.w,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the screen on save
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7D23E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      AccountScreenText.save,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                        fontFamily: "avenir",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 333.h,
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AccountScreenText.selectSubject,
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 18.sp)),
              SizedBox(
                height: 8.h,
              ),
              for (String item in AccountScreenText.subjectItems)
                Column(
                  children: [
                    _buildItem(item),
                    const Divider(),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(
        text,
        style: theme.textTheme.labelMedium!.copyWith(fontSize: 16.sp),
      ),
    );
  }
}
