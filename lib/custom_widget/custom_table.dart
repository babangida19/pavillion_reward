import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pavillion_reward/textstyle.dart';

class CustomTablewidget extends StatelessWidget {
  const CustomTablewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.w),
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction History",
                      style: Kstyle().bold700size16purple),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    child: Text(
                      "This Month  ⌄",
                      style: TextStyle(
                          fontSize: 7.74.sp,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff0D073C)),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columnSpacing: 20.h,
                  dividerThickness: 0,
                  columns: [
                    DataColumn(
                      label: Text("Name", style: Kstyle().bold700purpleOPsize7),
                    ),
                    DataColumn(
                      label: Text("Date", style: Kstyle().bold700purpleOPsize7),
                    ),
                    DataColumn(
                      label: Text("Time", style: Kstyle().bold700purpleOPsize7),
                    ),
                    DataColumn(
                      label: Text(
                        "Point",
                        style: Kstyle().bold700purpleOPsize7,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ],
                  rows: [
                    customDataRow(balance: true),
                    customDataRow(balance: false),
                    customDataRow(balance: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  DataRow customDataRow({required bool balance}) {
    return DataRow(
      cells: [
        DataCell(Row(
          children: [
            balance == true
                ? CircleAvatar(
                    backgroundColor: const Color(0xff8DD7A8),
                    child: Image.asset("assets/images/green_gift.png"),
                  )
                : CircleAvatar(
                    backgroundColor: const Color(0xffE592A5),
                    child: Image.asset("assets/images/red_gift.png"),
                  ),
            SizedBox(width: 8.w),
            Text(
              "SuperMart",
              style: TextStyle(
                  fontSize: 12.38.sp,
                  color: const Color(0xff0D073C),
                  fontWeight: FontWeight.w700),
            ),
          ],
        )),
        DataCell(
          Text("12/06/2022", style: Kstyle().bold700grey9),
        ),
        DataCell(
          Text("12:34", style: Kstyle().bold700grey9),
        ),
        DataCell(
          balance == true
              ? Text("+50points", style: Kstyle().bold700greensize12)
              : Text("-50points", style: Kstyle().bold700pinksize12),
        ),
      ],
    );
  }
}
