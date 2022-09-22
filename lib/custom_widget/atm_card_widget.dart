import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavillion_reward/textstyle.dart';

class AtmCardWidget extends StatelessWidget {
  const AtmCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28.w),
      padding: EdgeInsets.only(
          top: 22.11.h, left: 22.1.w, bottom: 16.61.h, right: 22.1.w),
      height: 165.68.h,
      width: 311.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.06.r),
        color: const Color(0xff5243D2),
        image: const DecorationImage(
          image: AssetImage("assets/images/card-image.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Virtual",
                style: Kstyle().bold700size15white,
              ),
              SizedBox(height: 11.93.h),
              Text("1234   5678   9012   3456",
                  style: Kstyle().bold700size15white),
              SizedBox(height: 5.53.h),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Expiry date", style: Kstyle().bold600size6white),
                      SizedBox(height: 1.38.h),
                      Text(
                        "12/34",
                        style: Kstyle().bold600size11white,
                      ),
                    ],
                  ),
                  SizedBox(width: 49.07.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("CVV", style: Kstyle().bold600size6white),
                      SizedBox(height: 1.38.h),
                      Text("123", style: Kstyle().bold600size11white),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 5.53.h),
              Text("Janet  M  Doe", style: Kstyle().bold700size15white),
            ],
          ),
          Column(
            children: [
              const Spacer(),
              Image.asset("assets/images/matercard-icon.png"),
              Text(
                "mastercard",
                style: Kstyle().bold500size11white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
