import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/cutom_textfrom.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
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
        padding: EdgeInsets.all(12.0.sp), // Adjusted with screen_util
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email id*",
                style: theme.textTheme.labelMedium!
                    .copyWith(fontSize: 16.sp)), // Adjusted with screen_util
            SizedBox(
              height: 8.h, // Adjusted with screen_util
            ),
            CustomTextFormField(
              hintText: 'Enter your Email',
              onChanged: (value) {
                print('Name: $value');
              },
            ),
            const Spacer(),
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h, // Adjusted with screen_util
                        // Adjusted with screen_util
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
            ),
          ],
        ),
      ),
    );
  }
}
