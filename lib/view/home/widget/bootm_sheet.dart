import 'package:flutter/material.dart';
import 'package:lead_management/utils/theme.dart';

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
          children: [
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
