import 'package:flutter/cupertino.dart';
import 'package:web_portfolio/constants/assets.dart';

import '../constants/impressions.dart';
import 'mobile_app_widget.dart';

class MobileProjectsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 200,
      spacing: 150,
      children: allProjects
    );
  }
}








