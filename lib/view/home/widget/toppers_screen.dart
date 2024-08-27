import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/topper_profile_edit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/view/home/widget/topper_widget.dart';

class ToppersScreen extends StatelessWidget {
  const ToppersScreen({super.key});

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
        padding: EdgeInsets.all(8.0.w), // Adjusted for ScreenUtil
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AccountScreenText.kTopperTitle,
              style: theme.textTheme.labelMedium!.copyWith(
                fontSize: 20.sp, // Responsive font size
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              AccountScreenText.kTopperSubtitle,
              style: theme.textTheme.bodySmall!.copyWith(fontSize: 14.sp),
            ),
            SizedBox(height: 16.h),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                final titles = [
                  'Pathan Afroz',
                  'Afrz Pathan',
                  'Shoel Pathan',
                ];
                return buildListItem(
                  context,
                  titles[index],
                  '70% CGPA',
                  'assets/images/pro.jpg',
                );
              },
            ),
            const Spacer(),
            Center(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TopperProfileEdit(),
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
                  child: const Text(
                    'Add New Student',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
