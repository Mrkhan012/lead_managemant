import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/theme.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

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
        padding: EdgeInsets.all(8.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Help & Support',
                style: theme.textTheme.bodyLarge!.copyWith(fontSize: 20.sp)),
            SizedBox(height: 8.h),
            Text(
              'Add list of toppers from your coaching centre, if any\n This adds huge credibility for your institute.',
              style: theme.textTheme.bodySmall!,
            ),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Email ID',
                  style: theme.textTheme.bodySmall!.copyWith(
                    fontSize: 16.sp,
                    color: const Color(0xFF535353),
                  ),
                ),
                Row(
                  children: [
                    Text('Send Mail',
                        style: theme.textTheme.bodySmall!.copyWith(
                            fontSize: 12.sp)), // Adjusted with screen_util
                    SizedBox(width: 4.w), // Adjusted with screen_util
                    const Icon(
                      CupertinoIcons.mail,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('+91 9886256255',
                    style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 16.sp,
                        color: const Color(
                            0xFF535353))), // Adjusted with screen_util
                Row(
                  children: [
                    Text('Call',
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12.sp,
                        )),
                    SizedBox(width: 4.w),
                    const Icon(
                      CupertinoIcons.phone,
                      size: 16,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
