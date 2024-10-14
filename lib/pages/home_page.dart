
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/constants/texts.dart';
import 'package:web_portfolio/controllers/scroll_controller.dart';
import 'package:web_portfolio/widgets/plugins_view.dart';
import 'package:web_portfolio/widgets/web_app_view.dart';
import '../widgets/app_bars.dart';
import '../widgets/author_info.dart';
import '../widgets/background_image.dart';
import '../widgets/button_row.dart';
import '../widgets/contact_bottom_widget.dart';
import '../widgets/header_button.dart';
import '../widgets/header_text.dart';
import '../widgets/mobile_projects_views.dart';
import '../widgets/quotes_widget.dart';
import '../widgets/recent_projects.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
final ScrollGetxController _scrollGetxController = Get.put(ScrollGetxController());


  @override
  Widget build(BuildContext context) {
    var _w = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: DestkopAppBar(),
      body: Center(
        child: Stack(
          children: [
            BackgroundImage(),
            CupertinoScrollbar(
              controller: _scrollGetxController.scrollController,
              child: SingleChildScrollView(
                controller: _scrollGetxController.scrollController,
                child: Column(
                  children: [
                    SizedBox(
                      height: 120,
                    ),
                    AuthorInfo(),
                    SizedBox(height: 100,),
                    ButonRow(w: _w),
                    SizedBox(height: 40,),
                    Column(
                      children: [
                        SizedBox(height: 50,),
                        CircleAvatar(
                          radius: 150,
                          backgroundImage: AssetImage( 'assets/profil.png'),),
                      ],
                    ),
                    SizedBox(height: 40,),
                    QuotesWidget(w: _w, ),
                    SizedBox(height: 100,),
                    HeaderText(ConstText.recentProjects),
                    SizedBox(height: 100,),
                    RecentProjects(),
                    SizedBox(height: 100,),
                    HeaderButton(ConstText.mobileProjects, (){}),
                    SizedBox(height: 100,),
                    MobileProjectsView(),
                    SizedBox(height: 100,),
                    HeaderButton(ConstText.webProjects, (){}),
                    SizedBox(height: 100,),
                    WebProjectsView(),
                    SizedBox(height: 100,),
                    HeaderButton(ConstText.pluginProjects, (){}),
                    SizedBox(height: 100,),
                    PluginProjectsView(),
                    SizedBox(height: 200,),
                    ContactBottomWidget(w: _w)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}











