import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class HeaderText extends StatelessWidget {
  final String text;

  HeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    var mobile = Get.width < 600;

    return Text(
      textAlign: TextAlign.center,
      text.toUpperCase(),
      style: TextStyle(
          shadows: [
            Shadow(
                color: ConstColors.color2,
                blurRadius: 1,
                offset: Offset.fromDirection(3,)
            )
          ],
          letterSpacing: 12,
          fontSize: mobile ? 20 : 50,
          color: ConstColors.color3,
          fontWeight: FontWeight.w500),
    );
  }
}
