import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';

class QuotesWidget extends StatelessWidget {
   QuotesWidget({
    super.key,
    required double w,
  }) : _w = w;

  final double _w;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: _w/1.5,
      decoration: BoxDecoration(
        color: ConstColors.scafBackColor,
          border: Border.all(color: ConstColors.color2, width: 3),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.format_quote_sharp, color: ConstColors.color2, size: 50,),
          Text(
            '"Success usually comes to those who are too busy to be looking for it."',
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 3,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: ConstColors.color3),
          ),
          Text(
            'Henry David Thoreau',
            textAlign: TextAlign.center,
            style: TextStyle(
                letterSpacing: 3,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: ConstColors.color2),
          )


        ],
      ),
    );
  }
}
