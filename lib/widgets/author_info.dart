import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/texts.dart';

class AuthorInfo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var mobile = Get.width < 600;
    return Column(
      children: [
        Text(
          ConstText.developerName.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
              letterSpacing: 12,
              fontSize: mobile ? 25 : 100,
              color: ConstColors.color3,
              fontWeight: FontWeight.bold),
        ),
        mobile ? SizedBox(height: 20,) : SizedBox(),
        Text(
          ConstText.specName.toUpperCase(),
          style: TextStyle(
              letterSpacing: 5,
              fontSize: mobile ? 18 : 25,
              color: ConstColors.color1,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
