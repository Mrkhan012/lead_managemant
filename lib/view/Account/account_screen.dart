import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lead_management/utils/assets.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/refer_earn.dart';
import 'package:lead_management/view/Account/widget/build_account.dart';
import 'package:lead_management/view/Account/widget/build_option.dart';
import 'package:lead_management/view/Account/widget/build_socail.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({
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
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    //  accoout information
                    Text(AccountScreenText.accountTitle,
                        style: theme.textTheme.bodyLarge!),
                    Text(AccountScreenText.accountNumber,
                        style: theme.textTheme.bodySmall!),
                    const SizedBox(
                      width: 4,
                    ),
                    SvgPicture.asset(
                      AppImages.copy,
                      height: 20,
                      width: 20,
                    ),
                  ],
                ),
              ),

              //  profile Details
              buildAccountCard(
                title: AccountScreenText.instituteName,
                subtitle: AccountScreenText.joinedDate,
                imagePath: AppImages.profile,
              ),

              // section for wallet card
              buildOption(
                title: AccountScreenText.walletTitle,
                subtitle: AccountScreenText.walletSubtitle,
                trailingIcon: CupertinoIcons.forward,
                borderColor: const Color(0xFFDDBEFF),
                leadingSvgPath: AppImages.wallet,
              ),
              const SizedBox(
                height: 20,
              ),
              // section for Manage Coursed card

              buildOption(
                title: AccountScreenText.manageCoursesTitle,
                subtitle: AccountScreenText.manageCoursesSubtitle,
                leadingSvgPath: AppImages.file,
                trailingIcon: CupertinoIcons.forward,
              ),
              // section for Category  card

              buildOption(
                title: AccountScreenText.categoryServicesTitle,
                subtitle: AccountScreenText.categoryServicesSubtitle,
                leadingSvgPath: AppImages.service,
                trailingIcon: CupertinoIcons.forward,
              ),
              const SizedBox(
                height: 20,
              ),
              // section for enrolled students  card

              buildOption(
                title: AccountScreenText.enrolledStudentsTitle,
                subtitle: AccountScreenText.enrolledStudentsSubtitle,
                leadingSvgPath: AppImages.family,
                trailingIcon: CupertinoIcons.forward,
              ),
              // section for topper students  card

              buildOption(
                title: AccountScreenText.topperStudentTitle,
                subtitle: AccountScreenText.topperStudentSubtitle,
                leadingSvgPath: AppImages.topper,
                trailingIcon: CupertinoIcons.forward,
              ),
              // section for Faculty  card

              buildOption(
                title: AccountScreenText.facultyTitle,
                subtitle: AccountScreenText.facultySubtitle,
                leadingSvgPath: AppImages.person,
                trailingIcon: CupertinoIcons.forward,
              ),
              const SizedBox(
                height: 20,
              ),

              // section for refer and earn  card

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
              const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 34,
                ),
                child: Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1,
                ),
              ),
              // section for rate us  card

              buildOption(
                title: AccountScreenText.rateUsTitle,
                subtitle: AccountScreenText.rateUsSubtitle,
                leadingSvgPath: AppImages.star,
                trailingIcon: CupertinoIcons.forward,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 34,
                ),
                child: Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1,
                ),
              ),
              // section for about ostello AI  card

              buildOption(
                title: AccountScreenText.aboutOstelloAITitle,
                subtitle: AccountScreenText.aboutOstelloAISubtitle,
                leadingSvgPath: AppImages.i,
                trailingIcon: CupertinoIcons.forward,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 34,
                ),
                child: Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1,
                ),
              ),
              // section for Help and support  card

              buildOption(
                title: AccountScreenText.helpSupportTitle,
                subtitle: AccountScreenText.helpSupportSubtitle,
                leadingSvgPath: AppImages.support,
                trailingIcon: CupertinoIcons.forward,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 40,
                  right: 34,
                ),
                child: Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1,
                ),
              ),
              // section for Manage Account  card

              buildOption(
                title: AccountScreenText.manageAccountTitle,
                subtitle: AccountScreenText.manageAccountSubtitle,
                leadingSvgPath: AppImages.settings,
                trailingIcon: CupertinoIcons.forward,
              ),
              const Divider(
                color: Color(0xFFEEEEEE),
                thickness: 1,
              ),

              //  Section for socail media etc
              Container(
                color: const Color(0xFFFBFBFB),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(AccountScreenText.followUsSocialMedia,
                          style: theme.textTheme.bodyLarge!
                              .copyWith(fontSize: 16)),
                    ),
                    // section for instagram card
                    buildbutton(
                      title: AccountScreenText.nowButton,
                      leadingSvgPath: AppImages.instagram,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // section for facebook card

                    buildbutton(
                      title: AccountScreenText.nowButton_2,
                      leadingSvgPath: AppImages.facebook,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    // section for twitter card

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
