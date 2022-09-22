import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pavillion_reward/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pavilion Reward',
          theme: ThemeData(
            textTheme: GoogleFonts.manropeTextTheme(),
            scaffoldBackgroundColor: const Color(0xffF7F7FE),
          ),
          home: child,
        );
      },
      child: const HomeView(),
    );
  }
}
