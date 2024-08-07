import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/texts.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          ConstText.developerName.toUpperCase(),
          style: GoogleFonts.josefinSans(
              letterSpacing: 12,
              fontSize: 100,
              color: ConstColors.color3,
              fontWeight: FontWeight.w400),
        ),
        Text(
          ConstText.specName.toUpperCase(),
          style: GoogleFonts.josefinSans(
              letterSpacing: 5,
              fontSize: 25,
              color: ConstColors.color1,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
