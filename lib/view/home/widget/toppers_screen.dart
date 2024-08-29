import 'package:flutter/material.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 12.h),
            child: Text(
              AccountScreenText.kTopperTitle,
              style: theme.textTheme.bodyLarge!.copyWith(
                fontSize: 20.sp, // Responsive font size
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.only(left: 16.0.w),
            child: Text(
              AccountScreenText.kTopperSubtitle,
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 14.sp,
              ),
            ),
          ),
          SizedBox(height: 12.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              final titles = [
                'Pathan Afroz',
                'Afroz Pathan',
              ];
              return buildListItem(
                context,
                titles[index],
                '70% CPG',
                'assets/images/pro.jpg',
              );
            },
          ),
          const Spacer(),
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
                    child: Text(
                      'Add New Student',
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
