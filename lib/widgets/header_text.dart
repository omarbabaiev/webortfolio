import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;

  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toUpperCase(),
      style: GoogleFonts.josefinSans(
          shadows: [
            Shadow(
                color: ConstColors.color2,
                blurRadius: 1,
                offset: Offset.fromDirection(3,)
            )
          ],
          letterSpacing: 12,
          fontSize: 50,
          color: ConstColors.color3,
          fontWeight: FontWeight.w300),
    );
  }
}
