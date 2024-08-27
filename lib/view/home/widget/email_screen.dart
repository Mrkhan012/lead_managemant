import 'package:flutter/material.dart';
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email id*", style: theme.textTheme.labelMedium!),
            const SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: 'Enter your Email',
              onChanged: (value) {
                print('Name: $value');
              },
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Handle 'No' button action
                  Navigator.pop(context); // Close bottom sheet
                  // Add logic for 'No' button action here
                },
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                  backgroundColor: const Color(0xFF7D23E0), // Background color
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
          ],
        ),
      ),
    );
  }
}
