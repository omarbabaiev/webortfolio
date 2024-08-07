import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_highlight/smooth_highlight.dart';
import 'package:web_portfolio/constants/colors.dart';
import 'package:web_portfolio/constants/impressions.dart';
import 'package:web_portfolio/constants/texts.dart';
import 'package:web_portfolio/widgets/plugins_view.dart';
import 'package:web_portfolio/widgets/web_app_view.dart';
import '../models/quote_model.dart';
import '../widgets/app_bars.dart';
import '../widgets/author_info.dart';
import '../widgets/background_image.dart';
import '../widgets/button_row.dart';
import '../widgets/contact_bottom_widget.dart';
import '../widgets/header_button.dart';
import '../widgets/header_text.dart';
import '../widgets/projects_views.dart';
import '../widgets/quotes_widget.dart';
import '../widgets/recent_projects.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var quote = Quote(id: 1, text: "Success usually comes to those who are too busy to be looking for it.", author: "Henry David Thoreau");
  var quotes = [];


  Future<void> loadQuotes() async {
    final jsonString = await rootBundle.loadString('data.json');
    final jsonResponse = json.decode(jsonString);
    final quotesJson = jsonResponse['categories'][0]['subcategories'][0]['quotes'];
    quotes = List<Quote>.from(quotesJson.map((json) => Quote.fromJson(json)));
    setState(() {
      quote = quotes[DateTime.now().day];
    });
  }
  var _scrollController;


@override
  void initState() {
  loadQuotes();
  _scrollController = ScrollController();
    // TODO: implement initState
    super.initState();
  }

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
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  AuthorInfo(),
                  SizedBox(height: 100,),
                  ButonRow(w: _w),
                  SizedBox(height: 40,),
                  QuotesWidget(w: _w, quote: quote),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Placeholder(fallbackWidth: 200,),),
                  HeaderButton(ConstText.buttonViewLogs, (){}),
                  SizedBox(height: 100,),
                  HeaderText(ConstText.recentProjects),
                  SizedBox(height: 50,),
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
          ],
        ),
      ),
    );
  }
}











