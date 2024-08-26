import 'package:flutter/material.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';

class ReferEarn extends StatelessWidget {
  const ReferEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(
                0xFF7D23E0,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                color: const Color(0xFFFFF5F3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AccountScreenText.referrEarnTitle,
                        style: theme.textTheme.displayLarge!),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      AccountScreenText.referrEarnSubtitle,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      'assets/images/banner.png',
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 340, // Container width
                padding: const EdgeInsets.all(20.0),
                color: const Color(0xFFFFF5F3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AccountScreenText.startReferringToday,
                      style: theme.textTheme.displayLarge!.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      AccountScreenText.limitedTimeOffer,
                      style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      AccountScreenText.stepsToEarn,
                      style: theme.textTheme.bodyLarge!
                          .copyWith(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      AccountScreenText.step1,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: const Color(0xFF757575),
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      AccountScreenText.step2,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: const Color(0xFF757575),
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      AccountScreenText.step3,
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: const Color(0xFF757575),
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      AccountScreenText.termsAndConditions,
                      style: theme.textTheme.bodyLarge!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF7D23E0), // Button color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 120.0, vertical: 12.0), // Button padding
                ),
                child: const Text(
                  AccountScreenText.referNowButton,
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
