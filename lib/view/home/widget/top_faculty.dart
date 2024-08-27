import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/topper_profile_edit.dart';

class TopFaculty extends StatelessWidget {
  const TopFaculty({super.key});

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
        padding: EdgeInsets.all(8.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Faculty',
              style: theme.textTheme.labelMedium!
                  .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 8.h),
            Text(
              'Add list of toppers from your coaching centre if any.\nThis adds huge credibility for your institute.',
              style: theme.textTheme.bodySmall!
                  .copyWith(fontSize: 14.sp), // Responsive font size
            ),
            SizedBox(height: 16.h), // Responsive height
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                final titles = [
                  'Pathan Afroz',
                  'Afrz Pathan',
                  'Shoel Pathan',
                ];
                return _buildListItem(
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
                    backgroundColor: const Color(0xFF7D23E0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8.r), // Responsive border radius
                    ),
                  ),
                  child: Text(
                    'Add New Student',
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem(
    BuildContext context,
    String title,
    String subtitle,
    String imagePath,
  ) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: EdgeInsets.all(8.w), // Responsive margin
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.r, // Responsive radius
          backgroundImage: AssetImage(imagePath),
        ),
        title: Row(
          children: [
            Text(
              title,
              style: theme.textTheme.labelMedium!
                  .copyWith(fontSize: 16.sp), // Responsive font size
            ),
          ],
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 4.h), // Responsive padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.badge,
                    size: 16.w, // Responsive icon size
                  ),
                  SizedBox(width: 4.w), // Responsive spacing
                  Text(
                    subtitle,
                    style: theme.textTheme.labelMedium!
                        .copyWith(fontSize: 14.sp), // Responsive font size
                  ),
                ],
              ),
              SizedBox(height: 8.h), // Responsive spacing
              Row(
                children: [
                  Icon(
                    Icons.book_outlined,
                    size: 16.w, // Responsive icon size
                  ),
                  SizedBox(width: 4.w), // Responsive spacing
                  _buildSubtitleContainer(
                    'English',
                    const Color(0xFFAFFFD0),
                  ),
                  SizedBox(width: 4.w), // Responsive spacing
                  _buildSubtitleContainer(
                    'Math',
                    const Color(0xFFFFD8D8),
                  ),
                  SizedBox(width: 4.w), // Responsive spacing
                  _buildSubtitleContainer(
                    'Science',
                    const Color(0xFFFFEFB4),
                  ),
                ],
              ),
            ],
          ),
        ),
        trailing: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TopperProfileEdit(),
              ),
            );
          },
          child: SvgPicture.asset(
            "assets/icon/edit-2.svg",
            width: 24.w, // Responsive width
            height: 24.h, // Responsive height
          ),
        ),
      ),
    );
  }

  Widget _buildSubtitleContainer(String label, Color color) {
    return Container(
      height: 24.h, // Responsive height
      width: 48.w, // Responsive width
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12.r), // Responsive border radius
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
              fontSize: 10.sp, color: Colors.black), // Responsive font size
        ),
      ),
    );
  }
}
