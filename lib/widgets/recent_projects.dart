import 'package:flutter/cupertino.dart';

import '../constants/impressions.dart';

class RecentProjects extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          allProjects[0],
          allProjects[1],
          allProjects[2],
        ]

    );
  }
}
