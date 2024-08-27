import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/topper_profile_edit.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AccountScreenText.kTopperTitle,
              style: theme.textTheme.labelMedium!
                  .copyWith(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Text(
              AccountScreenText.kTopperSubtitle,
              style: theme.textTheme.bodySmall!,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
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
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    backgroundColor:
                        const Color(0xFF7D23E0), // Background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
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

  Widget _buildListItem(
    BuildContext context,
    String title,
    String subtitle,
    String imagePath,
  ) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        title: Row(
          children: [
            Text(title, style: theme.textTheme.labelMedium!),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.badge,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text("70% CGPA", style: theme.textTheme.labelMedium!),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.book_outlined,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  _buildSubtitleContainer(
                    'English',
                    const Color(0xFFAFFFD0),
                  ),
                  const SizedBox(width: 4),
                  _buildSubtitleContainer(
                    'Math',
                    const Color(0xFFFFD8D8),
                  ),
                  const SizedBox(width: 4),
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
          child: SvgPicture.asset("assets/icon/edit-2.svg"),
        ),
      ),
    );
  }

  Widget _buildSubtitleContainer(String label, Color color) {
    return Container(
      height: 24,
      width: 48,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          label,
          style: const TextStyle(fontSize: 10, color: Colors.black),
        ),
      ),
    );
  }
}
