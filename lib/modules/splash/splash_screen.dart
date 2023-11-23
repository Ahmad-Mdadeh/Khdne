import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:khdne/resources/assets_manager.dart';

class SplashScreen extends StatelessWidget {

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2),() => Get.offNamed("/onboarding",),);
    return SafeArea(
      child: Scaffold(
        body: Image.asset(ImagesAssets.background,fit: BoxFit.cover,width: double.infinity,)
      ),
    );

  }
}
