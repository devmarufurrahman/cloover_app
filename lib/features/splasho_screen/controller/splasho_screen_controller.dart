import 'package:clover000/features/splasho_screen/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    super.onInit();

    // Initialize animation controller
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.easeInOut,
    );

    // Navigate to LoginScreen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const WelcomeScreen());
    });
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}
