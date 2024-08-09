import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/routes/routes.dart';
import 'constants/colors.dart';

Future main() async{
  runApp(MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: RouteManager.routes,
      title: 'Omar Babayev',
      theme: ThemeData(
        scaffoldBackgroundColor: ConstColors.scafBackColor,
        primarySwatch: Colors.deepOrange,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        fontFamily: 'JosefinSans',
      ),
    );
  }
}
