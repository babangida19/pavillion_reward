import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavillion_reward/custom_widget/atm_card_widget.dart';
import 'package:pavillion_reward/custom_widget/congratulations_container.dart';
import 'package:pavillion_reward/custom_widget/custom_table.dart';
import 'package:pavillion_reward/custom_widget/wallet_details.dart';

class Hompage extends StatefulWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  State<Hompage> createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const WalletDetails(),
            //congratulations
            const CongratulationsContainer(),
            //card
            SizedBox(
              height: 166.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return const AtmCardWidget();
                },
              ),
            ),
            SizedBox(height: 24.32.h),
            const CustomTablewidget(),
          ],
        ),
      ),
    );
  }
}
