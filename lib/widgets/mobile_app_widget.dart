import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/colors.dart';

class MobileApp extends StatelessWidget {

 final String path;
 final String title;
 final String description;
 final String link;

 MobileApp(this.path, this.title, this.description, this.link);

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
        crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
