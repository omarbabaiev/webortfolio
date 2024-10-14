import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/constants/assets.dart';

import '../constants/colors.dart';
import '../constants/impressions.dart';
import '../constants/texts.dart';
import 'mobile_app_widget.dart';

class MobileProjectsView extends StatelessWidget {

  Widget build(BuildContext context) {
    // Filter the list to include only instances of WebAppProjects
    List<Widget> mobileProjects = allProjects.where((project) => project is MobileApp).toList();

    return mobileProjects.isNotEmpty
        ? Wrap(
      runSpacing: 100,
      spacing: 150,
      children: mobileProjects,)
        : SizedBox(
        height: 200,
        child: Center(
          child: Text(
            ConstText.soon.toUpperCase(),
            style: GoogleFonts.josefinSans(
                shadows: [
                  Shadow(
                      color: ConstColors.color2,
                      blurRadius: 1,
                      offset: Offset.fromDirection(3,))],
                letterSpacing: 12,
                fontSize: 50,
                color: ConstColors.color3,
                fontWeight: FontWeight.w300),),));
  }
}








