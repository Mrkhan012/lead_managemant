import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lead_management/utils/text.dart';
import 'package:lead_management/utils/theme.dart';
import 'package:lead_management/view/Account/store/add_new_screen.dart';
import 'package:lead_management/view/Account/widget/custom_textfrom.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          AccountScreenText.kStore,
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
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 8.w),
                    child: SearchField(
                      borderColor: const Color(0xFFF4F4F4),
                      backgroundColor: const Color(0xFFF9F9F9),
                      controller: TextEditingController(),
                      onChanged: (value) {
                        // Handle search text changes here
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
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
                            color: const Color(0xFF7D23E0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "All",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Container(
                          height: 34,
                          width: 74.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xFFE3E3E3)),
                          ),
                          child: Center(
                            child: Text(
                              "Physics",
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
                          width: 74.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xFFE3E3E3)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: Center(
                              child: Text(
                                "Math",
                                style: theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF3E3843),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 8.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: theme.textTheme.bodyLarge!.copyWith(
                            fontSize: 14.sp, fontWeight: FontWeight.w900),
                      ),
                      Container(
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: const Color(0xffF7F1FF),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: Row(
                            children: [
                              Text(
                                "Books",
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
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
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3, // Replace with your actual item count
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(
                      8), // Adjusted margin for better spacing
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Container(
                    height: 170.h,
                    width: 322.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Image.asset(
                            'assets/images/store.png',
                            height: 135.w,
                            width: 117.h,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 18.h,
                            ),
                            Text(
                              "Physics",
                              style: theme.textTheme.labelMedium!.copyWith(
                                  fontSize: 14.sp, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "10th Class",
                              style: theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 10.sp, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Text(
                              "Most shocking news most shocking",
                              style: theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 10.sp, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '₹5000', // Actual price
                                  style: theme.textTheme.labelMedium!.copyWith(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.h, left: 4.w),
                                  child: Text(
                                    '10000', // Original price
                                    style: theme.textTheme.bodySmall!.copyWith(
                                      fontSize: 12.sp,
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '50% OFF', // Discount percentage
                                  style: theme.textTheme.displayLarge!.copyWith(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              height: 34.h,
                              width: 157.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                        color: Color(0xff7774D5)),
                                    borderRadius: BorderRadius.circular(7.r),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Icon(
                                      Icons.edit,
                                      size: 16,
                                      color: Color(0xff7774D5),
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "Edit", // Added constant for Get OTP button text
                                      style:
                                          theme.textTheme.bodyMedium!.copyWith(
                                        fontSize: 14.sp,
                                        color: const Color(0xff7774D5),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            height: 64.h,
            color: Colors.white,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(left: 12.w, right: 12.w),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const AddNewScreen(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        vertical: 15.h,
                      ),
                      backgroundColor: const Color(0xff7D23E0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                    ),
                    child: Text(
                      'Add New ',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
