import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';

class LeadsScreen extends StatelessWidget {
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(8.0.sp),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              AccountScreenText.kLeadTitle,
              style: theme.textTheme.bodyLarge!.copyWith(
                fontSize: 24.sp,
              ),
            ),
            Text(
              AccountScreenText.kLeadSubtitle,
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 12.sp,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
