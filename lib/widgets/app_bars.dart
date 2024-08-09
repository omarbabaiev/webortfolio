import 'package:adaptive_navbar/adaptive_navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/impressions.dart';

import '../controllers/scroll_controller.dart';

class DestkopAppBar extends StatelessWidget implements PreferredSize {
  final ScrollGetxController _scrollGetxController = Get.put(ScrollGetxController());

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

    return AdaptiveNavBar(
      excludeHeaderSemantics: true,
      canTitleGetTapped: true,
      titleTextStyle: TextStyle(color: ConstColors.color3, fontSize: mobile ? 18  : 25, fontFamily: "JosefinSans", fontWeight: FontWeight.bold),
      toolbarTextStyle: TextStyle(color: ConstColors.color3, fontSize: 20, fontFamily: "JosefinSans", fontWeight: FontWeight.bold),
      toolbarHeight: mobile ? 60 :200,
      title: Obx(()=>
      AnimatedCrossFade(firstChild:Text("OMAR BABAYEV", ),
          secondChild: Text("Porfolio"),
          crossFadeState: _scrollGetxController.isScrolled.value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: Duration(milliseconds: 100))

       ),
      onTitleTapped: ()async{
        await  _launchURL(socialButtonList[2].link);
      },
        
      backgroundColor: ConstColors.scafBackColor.withOpacity(.7),
        screenWidth: Get.width,
        navBarItems: [
          NavBarItem(text: "Home",
            onTap: (){ _scrollGetxController.scrollToPosition(0);},
          ),
          NavBarItem(text: "Projects",
          onTap: (){_scrollGetxController.scrollToPosition(1300);},
          ),
          NavBarItem(text: "Contact",
            onTap: (){
            _scrollGetxController.scrollToPosition(mobile ? 20000 :10000);

            },
          ),
          NavBarItem(text: "About",
            onTap: (){_scrollGetxController.scrollToPosition(0);},
          ),
          NavBarItem(text: "Info",
            onTap: (){_scrollGetxController.scrollToPosition(0);},

          ),

        ]
    );
  }

  @override
  // TODO: implement child
  Widget get child => Container();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}


