import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/cutom_textfrom.dart';

class TopperProfileEdit extends StatelessWidget {
  const TopperProfileEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        AccountScreenText.profileImage,
                        style: theme.textTheme.bodyLarge!
                            .copyWith(fontSize: 16.sp),
                      ),
                    ),

                    SizedBox(height: 8.h),
                    Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50.r, // Adjusted with screen_util
                            backgroundColor: const Color(0xFFFBF7FF),
                            child: Icon(
                              CupertinoIcons.photo_on_rectangle,
                              color: const Color(0xFF7D23E0),
                              size: 30.sp, // Adjusted with screen_util
                            ),
                          ),
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
                    SizedBox(height: 8.h),
                    Text(
                      AccountScreenText.nameOfFaculty,
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: AccountScreenText.nameOfFaculty,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      AccountScreenText.schoolName,
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: AccountScreenText.schoolName,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      AccountScreenText.percentageMarks,
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 12.h),
                    CustomTextFormField(
                      hintText: AccountScreenText.percentageMarks,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 12.h),
                    Text(
                      AccountScreenText.selectSubject,
                      style: theme.textTheme.labelMedium!
                          .copyWith(fontSize: 16.sp),
                    ),
                    SizedBox(height: 12.h), // Adjusted with screen_util
                    CustomTextFormField(
                      hintText: AccountScreenText.selectSubject,
                      onChanged: (value) {},
                      suffixIcon: CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: const Icon(
                          CupertinoIcons.chevron_down,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          showBottomSheet(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 48.h,
                  width: 140.w,
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
                        const Icon(Icons.delete,
                            color: Colors.red), // Icon on the left side
                        SizedBox(width: 8.w), // Spacing between icon and text
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
                  width: 140.w,
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
              Text(
                AccountScreenText.selectSubject,
                style: theme.textTheme.labelMedium!.copyWith(fontSize: 18.sp),
              ),
              SizedBox(height: 8.h),
              _buildItem(AccountScreenText.subjectItems[0]),
              const Divider(),
              _buildItem(AccountScreenText.subjectItems[1]),
              const Divider(),
              _buildItem(AccountScreenText.subjectItems[2]),
              const Divider(),
              _buildItem(AccountScreenText.subjectItems[3]),
              const Divider(),
              _buildItem(AccountScreenText.subjectItems[4]),
            ],
          ),
        );
      },
    );
  }

  Widget _buildItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(text,
          style: theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
    );
  }
}
