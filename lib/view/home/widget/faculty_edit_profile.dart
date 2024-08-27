import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/home/widget/cutom_textfrom.dart';

class FacultyEidtProfile extends StatelessWidget {
  const FacultyEidtProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text("Profile Image",
                      style: theme.textTheme.labelMedium!)),
              const SizedBox(
                height: 8,
              ),
              const Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFFFBF7FF),
                      child: Icon(
                        CupertinoIcons.photo_on_rectangle,
                        color: Color(0xFF7D23E0),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 12,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF7D23E0),
                        radius: 14,
                        // Corrected background color
                        child: Icon(
                          Icons.add,
                          color: Colors.white, // Icon color
                          size: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text("Name of the Faculty*", style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                hintText: 'Name',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Highest Qualification",
                  style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                hintText: 'Course Name ',
                onChanged: (value) {
                  print('Name: $value');
                },
                suffixIcon: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text("Select the Subject", style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                hintText: 'Subject',
                onChanged: (value) {
                  print('Name: $value');
                },
                suffixIcon: CupertinoButton(
                  padding: EdgeInsets.zero,
                  child: const Icon(
                    CupertinoIcons.chevron_down,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Email ID", style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                hintText: 'Enter Email ',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Text("Mobile Number", style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                hintText: '+9100000000 ',
                onChanged: (value) {
                  print('Name: $value');
                },
              ),
              Text("Description", style: theme.textTheme.labelMedium!),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity, // Full width of the screen
                height: 120, // Fixed height of 1200
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white, // Background color of the container
                  border: Border.all(
                      color: const Color(0xFFEEEEEE)), // Border color
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Start writing description here',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle 'No' button action
                      Navigator.pop(context); // Close bottom sheet
                      // Add logic for 'No' button action here
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
                      'Save',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 333, // Fixed height of the bottom sheet
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select the Subject",
                  style: theme.textTheme.labelMedium!.copyWith(fontSize: 18)),
              const SizedBox(
                height: 8,
              ),
              _buildItem('Class 8th Physics'),
              const Divider(),
              _buildItem('Class 9th Physics'),
              const Divider(),
              _buildItem('Class 8th Physics'),
              const Divider(),
              _buildItem('IIT-JEE (Class 12th)'),
              const Divider(),
              _buildItem('IIT-JEE (Class 12th)'),
            ],
          ),
        );
      },
    );
  }

  Widget _buildItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(text, style: theme.textTheme.labelMedium!),
    );
  }
}
