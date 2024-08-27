import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/cutom_textfrom.dart';

class FacultyEditProfile extends StatelessWidget {
  const FacultyEditProfile({super.key});

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
          padding: EdgeInsets.all(12.0.w), // Adjusted with screen_util
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text("Profile Image",
                      style: theme.textTheme.labelMedium!.copyWith(
                          fontSize: 16.sp))), // Adjusted with screen_util
              SizedBox(
                height: 8.h, // Adjusted with screen_util
              ),
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
                      right: 12.w, // Adjusted with screen_util
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
              SizedBox(height: 16.h), // Adjusted with screen_util
              Text("Name of the Faculty*",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
              CustomTextFormField(
                hintText: 'Name',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 10.h), // Adjusted with screen_util
              Text("Highest Qualification",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
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
                    size: 16.sp, // Adjusted with screen_util
                  ),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ),
              SizedBox(height: 10.h), // Adjusted with screen_util
              Text("Select the Subject",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
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
                    size: 16.sp, // Adjusted with screen_util
                  ),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ),
              SizedBox(height: 8.h), // Adjusted with screen_util
              Text("Email ID",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
              CustomTextFormField(
                hintText: 'Enter Email',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 8.h), // Adjusted with screen_util
              Text("Mobile Number",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
              CustomTextFormField(
                hintText: '+91 0000000000',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              SizedBox(height: 8.h), // Adjusted with screen_util
              Text("Description",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
              SizedBox(height: 8.h), // Adjusted with screen_util
              Container(
                width: double.infinity,
                height: 120.h, // Adjusted with screen_util
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(12.r), // Adjusted with screen_util
                  color: Colors.white,
                  border: Border.all(color: const Color(0xFFEEEEEE)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.w), // Adjusted with screen_util
                  child: Text(
                    'Start writing description here',
                    style: TextStyle(
                      fontSize: 16.sp, // Adjusted with screen_util
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60.h), // Adjusted with screen_util
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h, // Adjusted with screen_util
                      ),
                      backgroundColor:
                          const Color(0xFF7D23E0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.r), // Adjusted with screen_util
                      ),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp), // Adjusted with screen_util
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
          height: 333.h, // Adjusted with screen_util
          padding: EdgeInsets.symmetric(
              vertical: 16.h, horizontal: 24.w), // Adjusted with screen_util
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select the Subject",
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 18.sp)), // Adjusted with screen_util
              SizedBox(
                height: 8.h, // Adjusted with screen_util
              ),
              _buildItem('Class 8th Physics'),
              const Divider(),
              _buildItem('Class 9th Physics'),
              const Divider(),
              _buildItem('Class 10th Physics'),
              const Divider(),
              _buildItem('IIT-JEE (Class 12th)'),
              const Divider(),
              _buildItem('NEET (Class 12th)'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h), // Adjusted with screen_util
      child: Text(text,
          style: theme.textTheme.labelMedium!
              .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
    );
  }
}
