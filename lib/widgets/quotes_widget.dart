import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_highlight/smooth_highlight.dart';

import '../constants/colors.dart';
import '../models/quote_model.dart';

class QuotesWidget extends StatelessWidget {
  const QuotesWidget({
    super.key,
    required double w,
    required this.quote,
  }) : _w = w;

  final double _w;
  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      width: _w/1.5,
      decoration: BoxDecoration(
          border: Border.all(color: ConstColors.color2, width: 3),
          borderRadius: BorderRadius.circular(5)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.format_quote_sharp, color: ConstColors.color2, size: 50,),
          SmoothHighlight(
            color: ConstColors.scafBackColor,
            child: Text(
              '"${quote.text}"',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                  letterSpacing: 3,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: ConstColors.color3),
            ),
          ),
          Text(
            quote.author,
            textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
                letterSpacing: 3,
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: ConstColors.color2),
          )


        ],
      ),
    );
  }
}
