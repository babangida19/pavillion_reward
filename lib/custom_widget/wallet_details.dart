import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pavillion_reward/textstyle.dart';

class WalletDetails extends StatelessWidget {
  const WalletDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h,
      padding: EdgeInsets.only(left: 24.w, right: 24.w),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24.r),
            bottomRight: Radius.circular(24.r),
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              offset: Offset(2, 0),
              blurRadius: 10,
            ),
          ]),
      child: Column(
        children: [
          SizedBox(height: 27.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/images/avartar.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Text("Hi Janet,", style: Kstyle().bold700size15),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.search),
                  SizedBox(width: 5.w),
                  Image.asset(
                    "assets/images/help-circle.png",
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: 5.w),
                  Image.asset("assets/images/bell.png"),
                ],
              ),
            ],
          ),
          //hello jane
          SizedBox(height: 37.44.h),
          Row(
            children: [
              BalanceContainer(
                  image: "assets/images/wallet.png", text: "Wallet Balance"),
              const SizedBox(width: 18.09),
              BalanceContainer(
                  image: "assets/images/rewards.png", text: "Reward Balance"),
            ],
          ),
        ],
      ),
    );
  }
}

class BalanceContainer extends StatelessWidget {
  final String text;
  final String image;
  const BalanceContainer({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 5.w),
        height: 46.19.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.11.r),
          color: const Color(0xff5243D2),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(image),
                SizedBox(width: 9.42.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: Kstyle().bold700size9white),
                    SizedBox(height: 4.05.h),
                    Text(
                      "N 2,342 : 00",
                      style: Kstyle().bold500size7white,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 24.23.w),
            Column(
              children: [
                const Spacer(),
                Image.asset("assets/images/eye-off.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
