import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/email_screen.dart'; // Import your screen utils

class ManageAccount extends StatelessWidget {
  const ManageAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: Text(
          AccountScreenText.kAccountHeadline,
          style: theme.textTheme.bodyLarge!.copyWith(
            fontSize: 18.sp, // Using screen utils for font size
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.w), // Using screen utils for padding
            child: Container(
              padding: EdgeInsets.all(16.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.w),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const EmailScreen(),
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AccountScreenText.kAccountTitle,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(fontSize: 14.sp),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              AccountScreenText.kAccountsubtitle,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(fontSize: 12.sp),
                            ),
                          ],
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          child: const Icon(
                            CupertinoIcons.forward,
                            size: 24,
                            color: Color(0xFF292D32),
                          ),
                          onPressed: () {
                            // Handle onTap action here
                          },
                        ),
                      ],
                    ),
                  ),
                  Divider(
                      thickness: 1.w), // Adjusting thickness with screen utils
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AccountScreenText.kAccountLogout,
                            style: theme.textTheme.bodyLarge!
                                .copyWith(fontSize: 14.sp),
                          )
                        ],
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: const Icon(
                          CupertinoIcons.forward,
                          size: 24,
                          color: Color(0xFF292D32),
                        ),
                        onPressed: () {
                          showBottomSheet(context); // Handle onTap action here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.w),
          topRight: Radius.circular(24.w),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 333.h, // Adjusting height with screen utils
          padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30.w,
                backgroundColor: const Color.fromARGB(255, 225, 178, 174),
                child: Icon(
                  Icons.logout,
                  color: const Color(0xFFE13B30),
                  size: 24.sp,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Logout from GoldPe?',
                style: theme.textTheme.labelMedium!.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.h),
              Center(
                child: Text(
                  'You can always log back in at any time using the\nsame GoldPe.',
                  style: theme.textTheme.bodySmall!.copyWith(fontSize: 12.sp),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle 'Yes' button action
                      Navigator.pop(context); // Close bottom sheet
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.w,
                        vertical: 12.h,
                      ),
                      backgroundColor: Colors.white, // Transparent background
                      side: const BorderSide(
                        color: Color(0xFF7D23E0), // Outline color
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                    child: Text(
                      'Yes',
                      style: TextStyle(fontSize: 14.sp), // Adjusting text size
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle 'No' button action
                      Navigator.pop(context); // Close bottom sheet
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 60.w,
                        vertical: 12.h,
                      ),
                      backgroundColor:
                          const Color(0xFF7D23E0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.w),
                      ),
                    ),
                    child: Text(
                      'No',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp, // Adjusting text size
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
