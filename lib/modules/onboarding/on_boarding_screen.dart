import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/components/on_boarding_1.dart';
import 'package:khdne/modules/onboarding/on_boarding_controller.dart';

final onBoardingController = Get.find<OnBoardingController>();

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const OnBoarding1();
  }
}
