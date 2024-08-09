import 'package:flutter/cupertino.dart';

import '../constants/impressions.dart';

class RecentProjects extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Wrap(
        runSpacing: 100,
        spacing: 250,
        children:[
          allProjects[0],
          allProjects[1],
          allProjects[2],
        ]

    );
  }
}
