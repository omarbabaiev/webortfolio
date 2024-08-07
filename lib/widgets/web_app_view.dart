import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/widgets/web_app.dart';

import '../constants/colors.dart';
import '../constants/impressions.dart';
import '../constants/texts.dart';

class WebProjectsView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // Filter the list to include only instances of WebAppProjects
    List<Widget> webAppProjects = allProjects.where((project) => project is WebApp).toList();

    return webAppProjects.isNotEmpty
        ? Wrap(
      runSpacing: 100,
      spacing: 150,
      children: webAppProjects,)
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