import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/constants/assets.dart';

import '../constants/colors.dart';
import '../constants/impressions.dart';
import '../constants/texts.dart';

class ContactBottomWidget extends StatefulWidget {
  const ContactBottomWidget({
    super.key,
    required double w,
  }) : _w = w;


  final double _w;

  @override
  State<ContactBottomWidget> createState() => _ContactBottomWidgetState();
}

class _ContactBottomWidgetState extends State<ContactBottomWidget> {
  List<bool> _isHoveredList = List.generate(6, (_) => false);

  void _onHover(bool isHovered, int index) {
    setState(() {
      _isHoveredList[index] = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget._w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 20),
          Wrap(
            spacing: 30,
            children: List.generate(socialButtonList.length, (index) {
              return MouseRegion(
                onEnter: (_) => _onHover(true, index),
                onExit: (_) => _onHover(false, index),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  transform: _isHoveredList[index]
                      ? (Matrix4.identity()..translate(0, -10))
                      : Matrix4.identity(),
                  child: IconButton.filled(
                    style: IconButton.styleFrom(
                      backgroundColor: ConstColors.color1,
                    ),
                    onPressed: () {},
                    icon: socialButtonList[index],
                  ),
                ),
              );
            }),
          ),
          SizedBox(height: 10),
          Text(
            ConstText.allRight,
            style: GoogleFonts.poppins(
              letterSpacing: 3,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            ConstText.buildByWho,
            style: GoogleFonts.poppins(
              letterSpacing: 3,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),
      decoration: BoxDecoration(
        color: ConstColors.color2.withOpacity(.1),
      ),
    );
  }


}

class SocialButton extends StatelessWidget {
 final String link;
 final String asset;

 SocialButton(this.link, this.asset);
 Future<void> _launchURL(String url) async {
   if (await canLaunch(url)) {
     await launch(url);
   } else {
     throw 'Could not launch $url';
   }
 }
  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      style: IconButton.styleFrom(
        backgroundColor: ConstColors.color1,
      ),
      onPressed: () {
        _launchURL(link);
      },
      icon: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SvgPicture.asset("assets/social_buttons/${asset}", height: 20  ,),
      ),
    );
  }
}

