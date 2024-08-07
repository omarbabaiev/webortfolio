import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_portfolio/widgets/ticker_provider.dart';

import '../constants/assets.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimationProvider(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: .1,
            colorFilter: ColorFilter.mode(
                Theme.of(context).scaffoldBackgroundColor,
                BlendMode.color),
            fit: BoxFit.cover,
            image: AssetImage(ConstAssets.backImage),
          ),
        ),
      ),
    );
  }
}
