import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
            style: GoogleFonts.josefinSans(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: ConstColors.color3
            ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: 350,
            child: Text(description,
              style: GoogleFonts.josefinSans(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: ConstColors.color3
              ),),
          ),
        ),
        SizedBox(height: 20,),
        FilledButton.icon(
          style: FilledButton.styleFrom(
              minimumSize: Size(350, 80),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          onPressed: (){
            _launchURL(link);
          }, label: Text("Play Store", style: TextStyle(fontSize: 20),), icon: Icon(Icons.shop, size: 50,),),
        SizedBox(height: 10,),
        OutlinedButton.icon(
          style: FilledButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(350, 80),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          onPressed: (){
            _launchURL(link);
          }, label: Text("App Store", style: TextStyle(fontSize: 20, color: Colors.white)), icon: Icon(Icons.apple, size: 50, color: Colors.white,),),



      ],
    );
  }
}
