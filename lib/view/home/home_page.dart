import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/refer_earn.dart';
import 'package:lead_management/view/Account/widget/build_account.dart';
import 'package:lead_management/view/Account/widget/build_option.dart';
import 'package:lead_management/view/Account/widget/build_socail.dart';
import 'package:lead_management/view/Account/widget/payment.dart';
import 'package:lead_management/view/home/widget/Enrolled_tuden.dart';
import 'package:lead_management/view/home/widget/help_support_screen.dart';
import 'package:lead_management/view/home/widget/manage_account.dart';
import 'package:lead_management/view/home/widget/top_faculty.dart';
import 'package:lead_management/view/home/widget/toppers_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.r), // Responsive padding
                child: Row(
                  children: [
                    // Account information
                    Text(
                      AccountScreenText.accountTitle,
                      style: theme.textTheme.bodyLarge!.copyWith(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        AccountScreenText.accountNumber,
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 18.sp, // Responsive font size
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, left: 4.w),
                      child: SvgPicture.asset(
                        AppImages.copy,
                        height: 20.h, // Responsive height
                        width: 20.w, // Responsive width
                      ),
                    ),
                  ],
                ),
              ),

              // Profile Details
              buildAccountCard(
                title: AccountScreenText.instituteName,
                subtitle: AccountScreenText.joinedDate,
                imagePath: AppImages.profile,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Payment(),
                  ));
                },
                child: buildOption(
                  title: AccountScreenText.walletTitle,
                  subtitle: AccountScreenText.walletSubtitle,
                  trailingIcon: CupertinoIcons.forward,
                  borderColor: const Color(0xFFDDBEFF),
                  leadingSvgPath: AppImages.wallet,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),

              buildOption(
                title: AccountScreenText.bathes,
                subtitle: AccountScreenText.kbatces,
                leadingSvgPath: AppImages.file,
                trailingIcon: CupertinoIcons.forward,
                showAdditionalRow: true, // Set showAdditionalRow to true here
              ),

              // Section for Manage Courses card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ManageAccount(),
                  ));
                },
                child: buildOption(
                  title: AccountScreenText.manageCoursesTitle,
                  subtitle: AccountScreenText.manageCoursesSubtitle,
                  leadingSvgPath: AppImages.file,
                  trailingIcon: CupertinoIcons.forward,
                ),
              ),

              // Section for Category card
              buildOption(
                title: AccountScreenText.categoryServicesTitle,
                subtitle: AccountScreenText.categoryServicesSubtitle,
                leadingSvgPath: AppImages.service,
                trailingIcon: CupertinoIcons.forward,
              ),

              buildOption(
                title: AccountScreenText.kPayment,
                subtitle: AccountScreenText.kPaymentSub,
                leadingSvgPath: AppImages.service,
                trailingIcon: CupertinoIcons.forward,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(
                  color: const Color(0xFFEEEEEE),
                  thickness: 1.r, // Responsive thickness
                ),
              ),

              SizedBox(height: 20.h), // Responsive height

              // Section for Enrolled Students card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EnrolledTuden(),
                  ));
                },
                child: buildOption(
                  title: AccountScreenText.enrolledStudentsTitle,
                  subtitle: AccountScreenText.enrolledStudentsSubtitle,
                  leadingSvgPath: AppImages.family,
                  trailingIcon: CupertinoIcons.forward,
                ),
              ),

              // Section for Topper Students card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ToppersScreen(),
                  ));
                },
                child: buildOption(
                  title: AccountScreenText.topperStudentTitle,
                  subtitle: AccountScreenText.topperStudentSubtitle,
                  leadingSvgPath: AppImages.topper,
                  trailingIcon: CupertinoIcons.forward,
                ),
              ),

              // Section for Faculty card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const TopFaculty(),
                    ),
                  );
                },
                child: buildOption(
                  title: AccountScreenText.facultyTitle,
                  subtitle: AccountScreenText.facultySubtitle,
                  leadingSvgPath: AppImages.person,
                  trailingIcon: CupertinoIcons.forward,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(
                  color: const Color(0xFFEEEEEE),
                  thickness: 1.r, // Responsive thickness
                ),
              ),
              SizedBox(height: 20.h), // Responsive height

              // Section for Refer and Earn card
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const ReferEarn(),
                  ));
                },
                child: buildOption(
                  title: AccountScreenText.referEarnTitle,
                  subtitle: AccountScreenText.referEarnSubtitle,
                  leadingSvgPath: AppImages.share,
                  trailingIcon: CupertinoIcons.forward,
                ),
              ),

              // Section for Rate Us card
              buildOption(
                title: AccountScreenText.rateUsTitle,
                subtitle: AccountScreenText.rateUsSubtitle,
                leadingSvgPath: AppImages.star,
                trailingIcon: CupertinoIcons.forward,
              ),

              // Section for About Ostello AI card
              buildOption(
                title: AccountScreenText.aboutOstelloAITitle,
                subtitle: AccountScreenText.aboutOstelloAISubtitle,
                leadingSvgPath: AppImages.i,
                trailingIcon: CupertinoIcons.forward,
              ),

              // // Section for Help and Support card
              // InkWell(
              //   onTap: () {
              //     Navigator.of(context).push(MaterialPageRoute(
              //       builder: (context) => const HelpSupportScreen(),
              //     ));
              //   },
              //   child: buildOption(
              //     title: AccountScreenText.helpSupportTitle,
              //     subtitle: AccountScreenText.helpSupportSubtitle,
              //     leadingSvgPath: AppImages.support,
              //     trailingIcon: CupertinoIcons.forward,
              //   ),
              // ),

              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 40.w),
              //   child: Divider(
              //     color: const Color(0xFFEEEEEE),
              //     thickness: 1.r, // Responsive thickness
              //   ),
              // ),

              // // Section for Manage Account card
              // buildOption(
              //   title: AccountScreenText.manageAccountTitle,
              //   subtitle: AccountScreenText.manageAccountSubtitle,
              //   leadingSvgPath: AppImages.settings,
              //   trailingIcon: CupertinoIcons.forward,
              // ),

              Divider(
                color: const Color(0xFFEEEEEE),
                thickness: 1.r, // Responsive thickness
              ),

              // Section for social media buttons
              Container(
                color: const Color(0xFFFBFBFB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.r), // Responsive padding
                      child: Text(
                        AccountScreenText.followUsSocialMedia,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),

                    // Section for Instagram card
                    buildbutton(
                      title: AccountScreenText.nowButton,
                      leadingSvgPath: AppImages.instagram,
                    ),

                    SizedBox(height: 8.h), // Responsive height

                    // Section for Facebook card
                    buildbutton(
                      title: AccountScreenText.nowButton_2,
                      leadingSvgPath: AppImages.facebook,
                    ),

                    SizedBox(height: 8.h), // Responsive height

                    // Section for Twitter card
                    buildbutton(
                      title: AccountScreenText.nowButton_3,
                      leadingSvgPath: AppImages.twitter,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
