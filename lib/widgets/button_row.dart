import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/texts.dart';

class ButonRow extends StatefulWidget {
  const ButonRow({
    super.key,
    required double w,
  }) : _w = w;

  final double _w;

  @override
  State<ButonRow> createState() => _ButonRowState();
}

class _ButonRowState extends State<ButonRow> {
  bool _isHovered = false;
  bool _isHovered2 = false;


  @override
  Widget build(BuildContext context) {
    void _onHover(bool isHovered) {
      setState(() {
        _isHovered = isHovered;
      });
    }
    void _onHover2(bool isHovered) {
      setState(() {
        _isHovered2 = isHovered;
      });
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MouseRegion(
        onEnter: (_) => _onHover(true),
    onExit: (_) => _onHover(false),
    child: AnimatedContainer(
    duration: Duration(milliseconds: 300),
    transform: _isHovered ? (Matrix4.identity()..translate(0, -10)) : Matrix4.identity(),
    child: FilledButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: ConstColors.color1,

      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 4, vertical: 15),
        child: Text(
          ConstText.buttonAboutMe.toUpperCase(),
          style: GoogleFonts.josefinSans(
              letterSpacing: 3,
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ),
    ),
    ),
    ),
        SizedBox(width: widget._w / 40),
        MouseRegion(
          onEnter: (_) => _onHover2(true),
          onExit: (_) => _onHover2(false),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: _isHovered2 ? (Matrix4.identity()..translate(0, -10)) : Matrix4.identity(),
            child: FilledButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: ConstColors.color2,
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 4, vertical: 15),
                child: Text(
                  ConstText.buttonMyProjects.toUpperCase(),
                  style: GoogleFonts.josefinSans(
                      letterSpacing: 3,
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: ConstColors.color3),
                ),
              ),
            ),

          ),
        ),

      ],
    );
  }
}
