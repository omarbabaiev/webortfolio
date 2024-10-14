import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/constants/assets.dart';

import '../constants/colors.dart';

class WebApp extends StatelessWidget {

  final String path;
  final String title;
  final String description;
  final String link;

  WebApp(this.path, this.title, this.description, this.link);

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(13),
            height: 700,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(50)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset("assets/projects/${path}")),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(title,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: ConstColors.color3
              ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 350,
              child: Text(description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: ConstColors.color3.withOpacity(.7)
                ),),
            ),
          ),
          SizedBox(height: 20,),
          FilledButton.icon(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.black,
                minimumSize: Size(350, 80),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
            onPressed: (){
              _launchURL(link);
            }, label: Text("Github", style: TextStyle(fontSize: 20, color: Colors.white),), icon: Padding(
            padding: const EdgeInsets.all(1.0),
            child: SvgPicture.asset("assets/social_buttons/${ConstAssets.github}", height: 40, color: Colors.white, ),
          ),),
          SizedBox(height: 10,),
          SizedBox(width: 350, height: 80, )



        ],
      ),
    );
  }
}
