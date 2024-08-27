import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/cutom_textfrom.dart';
import 'package:lead_management/view/home/widget/email_screen.dart';

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
            fontSize: 18,
          ),
        ),
        centerTitle: true,
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
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
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
                          Text(AccountScreenText.kAccountTitle,
                              style: theme.textTheme.labelMedium!),
                          const SizedBox(height: 4),
                          Text(AccountScreenText.kAccountsubtitle,
                              style: theme.textTheme.bodySmall!),
                        ],
                      ),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        child: const Icon(CupertinoIcons.forward,
                            size: 24, color: Color(0xFF292D32)),
                        onPressed: () {
                          // Handle onTap action here
                        },
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  child: Divider(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AccountScreenText.kAccountLogout,
                            style: theme.textTheme.labelMedium!)
                      ],
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: const Icon(CupertinoIcons.forward,
                          size: 24, color: Color(0xFF292D32)),
                      onPressed: () {
                        showBottomSheet(context); // Handle onTap action here
                      },
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 333, // Fixed height of the bottom sheet
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor:
                    Color.fromARGB(255, 225, 178, 174), // Circle avatar color
                child: Icon(
                  Icons.logout,
                  color: Color(0xFFE13B30), // Icon color
                ),
              ),
              const SizedBox(height: 16),
              Text('Logout from GoldPe?',
                  style: theme.textTheme.labelMedium!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.w700)),
              const SizedBox(height: 16),
              Center(
                child: Text(
                  'You can always log back in at any time using the\nsame GoldPe.',
                  style: theme.textTheme.bodySmall!,
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
                      // Add logic for 'Yes' button action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60,
                          vertical: 12), // Adjust padding as needed
                      backgroundColor: Colors.white, // Transparent background
                      side: const BorderSide(
                          color: Color(0xFF7D23E0)), // Outline color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text('Yes'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle 'No' button action
                      Navigator.pop(context); // Close bottom sheet
                      // Add logic for 'No' button action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 12),
                      backgroundColor:
                          const Color(0xFF7D23E0), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'No',
                      style: TextStyle(color: Colors.white),
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
