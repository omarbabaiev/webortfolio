import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:web_portfolio/constants/colors.dart';

class BackgroundImage extends StatefulWidget {
  const BackgroundImage({super.key});

  @override
  _BackgroundImageState createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeTransition(
          opacity: _animation,
          child: SvgPicture.asset(
            'Sprinkle.svg',
            fit: BoxFit.cover,
            height: Get.height,
            width: Get.width,
            color: ConstColors.color1,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: ConstColors.scafBackColor.withOpacity(.9),
          ),
        ),
      ],
    );
  }
}
