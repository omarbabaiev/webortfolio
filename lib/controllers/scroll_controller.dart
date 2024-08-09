import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScrollGetxController extends GetxController {
  var isScrolled = false.obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      if (scrollController.position.pixels > 170) {
        isScrolled.value = true;
      } else {
        isScrolled.value = false;
      }
    });
  }

  void scrollToPosition(double position) {
    scrollController.animateTo(
      position,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}
