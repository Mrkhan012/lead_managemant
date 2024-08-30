import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/widget/cutom_textfrom.dart';

class AddNewScreen extends StatelessWidget {
  const AddNewScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          AccountScreenText.kaddNew,
          style: theme.textTheme.labelMedium!
              .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(1.0), // Set height of the divider
          child: Container(
            color: const Color(0xFFEEEEEE), // Divider color
            height: 1.0, // Divider height
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Upload Thumbnail",
                style: theme.textTheme.labelMedium!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "assets/images/uplod_tumabil.png",
                      height: 115.h,
                      width: 327.w,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/document-upload.png",
                            height: 42.h,
                            width: 42.w,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Drag & Drop the file/ Upload",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                AccountScreenText.kAddNew,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAdd,
                onChanged: (value) {},
              ),
              SizedBox(height: 14.h),
              Text(
                AccountScreenText.kAddCateogry,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAddSlCateogry,
                onChanged: (value) {},
                suffixIcon: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                "Select Class",
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: "Select Class",
                onChanged: (value) {},
                suffixIcon: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 14.h),
              Text(
                AccountScreenText.kAddSubject,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAddSubject,
                onChanged: (value) {},
              ),
              SizedBox(height: 14.h),
              Text(
                AccountScreenText.kAddPrice,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAddOffer,
                onChanged: (value) {},
              ),
              SizedBox(height: 14.h),
              Text(
                AccountScreenText.kAddOffer,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAddOfferr,
                onChanged: (value) {},
              ),
              SizedBox(height: 14.h),
              Text(
                AccountScreenText.kAddDec,
                style: theme.textTheme.bodyLarge!
                    .copyWith(fontSize: 16.sp, fontFamily: "avenir"),
              ),
              SizedBox(height: 10.h),
              CustomTextFormField(
                hintText: AccountScreenText.kAddDec,
                onChanged: (value) {},
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                "Upload Video",
                style: theme.textTheme.labelMedium!.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      "assets/images/upload_video.png",
                      height: 101.h,
                      width: 327.w,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, left: 20),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/videoo.png",
                            height: 42.h,
                            width: 42.w,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Drag & Drop the file",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24, right: 68),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Upload Video",
                            style: theme.textTheme.labelMedium!.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            ". File Size should be 300 kb",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "MP4 format",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: Container(
                  width: 327.w,
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    border: Border.all(
                        color: const Color(0xFF7D23E0),
                        width: 2), // Border color and width
                    borderRadius: BorderRadius.circular(16), // Border radius
                  ),
                  child: ListTile(
                      leading: Image.asset(
                        "assets/images/video-play.png",
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Document name',
                        style: theme.textTheme.labelMedium!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ), // Title text
                      subtitle: Text(
                        'PDF 30KB',
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ), // Subtitle text
                      trailing: Image.asset(
                        "assets/images/cancel.png",
                        height: 40.h,
                        width: 40.w,
                      )),
                ),
              ),
              SizedBox(
                height: 50.h,
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
                          side: const BorderSide(
                              color: Colors.red), // Border color
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
      ),
    );
  }
}
