import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';

class Payment extends StatelessWidget {
  List itemList = [
    {
      'imageUrl': 'assets/images/person.png',
      'title': 'Naveen',
      'rupee': '-₹2000.00',
      'subtitle': 'Transaction ID - IUj837489574',
    },
    {
      'imageUrl': 'assets/images/person.png',
      'title': 'Added',
      'rupee': '+₹2000.00',
      'subtitle': 'Transaction ID - IUj837489574',
    },
    {
      'imageUrl': 'assets/images/person.png',
      'title': 'Naveen',
      'rupee': '-₹2000.00',
      'subtitle': 'Transaction ID - IUj837489574',
    },
  ];
  Payment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          AccountScreenText.kPayment,
          style: theme.textTheme.labelMedium!
              .copyWith(fontSize: 18.sp, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(1.0), // Set height of the divider
          child: Container(
            color: const Color(0xFFEEEEEE), // Divider color
            height: 1.0, // Divider height
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 350,
              height: 220.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border:
                    Border.all(color: const Color(0xFFEEEEEE)), // #EEEEEE color
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 8.w, top: 12.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Wallet balance',
                              style: theme.textTheme.bodyLarge!.copyWith(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text(
                                  '₹1,000',
                                  style: theme.textTheme.bodyLarge!.copyWith(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xFF7D23E0)),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(32),
                                      color: const Color(0xFFFFC4C0)),
                                  child: Center(
                                    child: Text(
                                      "Low bal",
                                      style: theme.textTheme.bodySmall!
                                          .copyWith(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xFFE13B30)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF7D23E0), // #7D23E0 color
                              fixedSize: const Size(120, 17),
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0),
                              )),
                          child: Text(
                            'Add money',
                            style: theme.textTheme.bodyMedium!.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Divider(
                    color: Color(0xFFF3E7FF),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w, right: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From Student',
                              style: theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              '₹1,000',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        const VerticalDivider(
                            color: Colors.red), // Vertical Divider added here
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'From Student',
                              style: theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              ' ₹1,000',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  fontSize: 16.sp, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Container(
                      width: double
                          .infinity, // This makes the Container fill the available width
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)),
                        color: Color(0xFFFFF1F1), // Background color

                        // Optional: Add border radius
                      ),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Icon(
                              Icons.info_outline_rounded,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(
                            width: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              '2,000 will be blocked until the student reverted\n with feedback.',
                              style: theme.textTheme.labelMedium!.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 16),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 36,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE3E3E3)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Filter",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3E3843),
                            ),
                          ),
                          Image.asset(
                            "assets/images/filter.png",
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 34,
                    width: 47,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE2FFEE),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3E3843),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 34,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE3E3E3)),
                    ),
                    child: Center(
                      child: Text(
                        "Recent Payments",
                        style: theme.textTheme.bodySmall!.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF3E3843),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: const Color(0xFFE3E3E3)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Text(
                            "Date",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF3E3843),
                            ),
                          ),
                          const Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 26.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              "Transactions",
              style: theme.textTheme.bodySmall!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: const Color(0xFF3E3843),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              String imageUrl = itemList[index]['imageUrl'];
              String title = itemList[index]['title'];
              String subtitle = itemList[index]['subtitle'];
              String rupee = itemList[index]['rupee'];

              // Define a function to conditionally add divider
              Widget buildListTile() {
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        imageUrl,
                        height: 34,
                        width: 34,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: theme.textTheme.bodyLarge!.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "12:00PM",
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFF878487),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            subtitle,
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                              color: const Color(0xFF707070),
                            ),
                          ),
                          Text(
                            rupee,
                            style: theme.textTheme.bodySmall!.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // Handle onTap action if needed
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: Divider(
                        color: Color(0xFFEEEEEE),
                      ),
                    ), // Divider between ListTiles
                  ],
                );
              }

              // Check if it's the last item to avoid extra divider at the end
              return index == itemList.length - 1
                  ? buildListTile()
                  : buildListTile();
            },
          )
        ],
      ),
    );
  }
}
