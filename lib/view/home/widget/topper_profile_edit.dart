import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Profile Image",
                  style: theme.textTheme.labelMedium!.copyWith(fontSize: 16.sp),
                ),
              ),
              SizedBox(height: 8.h),
              const Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFFBF7FF),
                      child: Icon(
                        CupertinoIcons.photo_on_rectangle,
                        color: Color(0xFF7D23E0),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 12,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF7D23E0),
                        radius: 14,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              Text("Name of the Student*",
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'Name',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 10.h),
              Text("School Name",
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'School Name',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 10.h),
              Text("Percentage/Marks Student got.",
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'Percentage',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 10.h),
              Text("Select the Subject",
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 14.sp)),
              SizedBox(height: 8.h),
              CustomTextFormField(
                hintText: 'Subject',
                onChanged: (value) {
                  print('Name: $value');
                },
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
              SizedBox(height: 60.h),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Close the screen on save
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      backgroundColor: const Color(0xFF7D23E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
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
              Text("Select the Subject",
                  style:
                      theme.textTheme.labelMedium!.copyWith(fontSize: 18.sp)),
              SizedBox(height: 8.h),
              _buildItem('Class 8th Physics'),
              const Divider(),
              _buildItem('Class 9th Physics'),
              const Divider(),
              _buildItem('Class 8th Physics'),
              const Divider(),
              _buildItem('IIT-JEE (Class 12th)'),
              const Divider(),
              _buildItem('IIT-JEE (Class 12th)'),
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
