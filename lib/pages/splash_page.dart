import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/routes/routes.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Timer timer;

  @override
  void initState() {
    super.initState();

    // Navigate to HomePage after 3 seconds
    timer = Timer(Duration(seconds: 5), () {
      Get.offAllNamed(RouteManager.homePage, );
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Loading...",
              style: GoogleFonts.josefinSans(
                fontSize: 30,
                color: ConstColors.color2,
              ),
            ),
            SizedBox(height: 40),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: 1),
              duration: Duration(seconds: 5),
              builder: (context, value, _) {
                return SizedBox(
                    width: Get.width/2,
                    child: LinearProgressIndicator(value: value, color: ConstColors.color1, backgroundColor: Color(0xf33d2a5),));
              },
            ),
          ],
        ),
      ),
    );
  }
}
