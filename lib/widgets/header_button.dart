import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/texts.dart';

class HeaderButton extends StatelessWidget {
  final String text;
  final Function() function;
  Color color;
  HeaderButton(this.text, this.function, {Color? color})
      : this.color = color ?? ConstColors.color2;
  @override
  Widget build(BuildContext context) {
    var mobile = Get.width < 600;

    return FilledButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: ConstColors.color2,
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 4, vertical: 15),
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
              letterSpacing: 3,
              fontSize: mobile ? 20 : 25,
              fontWeight: FontWeight.w600,
              color: ConstColors.color3),
        ),
      ),
    );
  }
}
