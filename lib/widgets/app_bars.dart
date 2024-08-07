import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/constants/colors.dart';

class DestkopAppBar extends StatelessWidget implements PreferredSize {
  const DestkopAppBar({
    super.key,
  });

  void _showMenu(BuildContext context) {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    showDialog(context: context, builder: (context){
      return Padding(
        padding:  EdgeInsets.symmetric(horizontal: Get.width/8, vertical: Get.height/3),
        child: Container(
          width: 200,
          height: 200,
          color: ConstColors.scafBackColor,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: 0,
      scrolledUnderElevation: 0,
      actions: [
        IconButton.filledTonal(
          style: IconButton.styleFrom(
              backgroundColor: Color(0xff525E65)),
          onPressed: () {
            _showMenu(context);
          },
          icon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(Icons.pause, size: 23, color: Color(0xffD7E4D1)),
          ),
        ),
        SizedBox(width: 20),
      ],
      leading: FlutterLogo(),
    );
  }

  @override
  // TODO: implement child
  Widget get child => Container();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(100);
}
