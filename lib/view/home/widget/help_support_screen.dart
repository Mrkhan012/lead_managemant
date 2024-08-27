import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lead_management/utils/theme.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Help & Support',
                style: theme.textTheme.labelMedium!.copyWith(fontSize: 20)),
            const SizedBox(
              height: 8,
            ),
            Text(
                'Add list of toppers from your coaching centre, if any\n This adds huge credibility for your institute.',
                style: theme.textTheme.bodySmall!),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Email ID',
                    style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 16, color: const Color(0xFF535353))),
                Row(
                  children: [
                    Text('Send Mail',
                        style:
                            theme.textTheme.bodySmall!.copyWith(fontSize: 12)),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      CupertinoIcons.mail,
                      size: 14,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('+91 9886256255',
                    style: theme.textTheme.bodySmall!.copyWith(
                        fontSize: 16, color: const Color(0xFF535353))),
                Row(
                  children: [
                    Text('Call',
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                        )),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      CupertinoIcons.phone,
                      size: 14,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
