import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavillion_reward/textstyle.dart';

class CongratulationsContainer extends StatelessWidget {
  const CongratulationsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      height: 67.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: const Color(0xff5141CE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Congratulations!!",
                  style: Kstyle().bold700size12white,
                ),
                SizedBox(height: 2.h),
                // Text(
                //   "You’ve completed all your tasks for the week and you won 150 points.!!",
                //   style: Kstyle().bold500size6white,
                // ),
                RichText(
                  text: TextSpan(
                      text:
                          "You’ve completed all your tasks for the week and you won",
                      style: Kstyle().bold500size6white,
                      children: [
                        TextSpan(
                            text: "150 points.",
                            style: Kstyle().bold500size6yellow)
                      ]),
                ),
                SizedBox(height: 10.h),
                Container(
                  height: 18.h,
                  width: 115.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Center(
                    child: Text(
                      "Redeem Now!",
                      style: Kstyle().bold600size7purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset("assets/images/treasure.png")
        ],
      ),
    );
  }
}
