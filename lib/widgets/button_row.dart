import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/texts.dart';
import 'package:web_portfolio/controllers/scroll_controller.dart';

import '../constants/impressions.dart';

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
  final ScrollGetxController _controller = Get.put(ScrollGetxController());
  bool _isHovered = false;
  bool _isHovered2 = false;
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var mobile = Get.width < 600;

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
    return mobile
        ? Column(
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
                  minimumSize:mobile ?Size(45, 40) : Size(300, 60)


              ),
              onPressed: () async{
                await  _launchURL(socialButtonList[2].link);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 4, vertical: 15),
                child: Text(
                  ConstText.buttonAboutMe.toUpperCase(),
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: mobile ? 18 : 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 30,),
        MouseRegion(
          onEnter: (_) => _onHover2(true),
          onExit: (_) => _onHover2(false),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            transform: _isHovered2 ? (Matrix4.identity()..translate(0, -10)) : Matrix4.identity(),
            child: FilledButton(
              style: OutlinedButton.styleFrom(
                  backgroundColor: ConstColors.color2,
                  minimumSize:mobile ?Size(50, 40) : Size(300, 60)

              ),
              onPressed: () {
                _controller.scrollToPosition(1300);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 4, vertical: 15),
                child: Text(
                  ConstText.buttonMyProjects.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3,
                      fontSize: mobile ? 18 : 25,
                      color: ConstColors.color3),
                ),
              ),
            ),

          ),
        ),

      ],
    )
        :  Row(
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
          minimumSize:mobile ?Size(45, 40) : Size(300, 60)


      ),
      onPressed: () async{
        await _launchURL(socialButtonList[2].link);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 4, vertical: 15),
        child: Text(
          ConstText.buttonAboutMe.toUpperCase(),
          style: TextStyle(
              letterSpacing: 3,
              fontSize: mobile ? 18 : 25,
              fontWeight: FontWeight.w600,
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
                  minimumSize:mobile ?Size(50, 40) : Size(300, 60)

              ),
              onPressed: () {
                _controller.scrollToPosition(1300);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 4, vertical: 15),
                child: Text(
                  ConstText.buttonMyProjects.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      letterSpacing: 3,
                      fontSize: mobile ? 18 : 25,
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
