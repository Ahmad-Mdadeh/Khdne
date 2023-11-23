import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khdne/components/on_boarding_2.dart';
import 'package:khdne/components/on_boarding_timer_button.dart';
import 'package:khdne/modules/onboarding/on_boarding_screen.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/resources/strings_manager.dart';
import 'package:khdne/resources/values_manager.dart';
import 'package:khdne/utils/text_manager.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: AppPadding.p38),
          child: Stack(
            children: [
              SvgPicture.asset(
                ImagesAssets.line1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p20),
                    child: TextButton(
                      onPressed: () {
                        Get.offAllNamed('/login');
                      },
                      child: const TextUtils(
                        text: "تخطي",
                        color: Colors.black,
                        fontWeight: FontWeightManager.medium,
                        fontSize: FontSize.s15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                    child: Stack(
                      children: [
                        Positioned(
                          right: size.width * 0.16,
                          bottom: size.height * 0.001,
                          child: Container(
                            color: ColorManager.primary.withOpacity(0.3),
                            width: 145,
                            height: 15,
                          ),
                        ),
                        Positioned(
                          right: size.width * 0.14,
                          bottom: size.height * 0.001,
                          child: const TextUtils(
                            text: AppStrings.onBoardingTitle1,
                            fontWeight: FontWeightManager.bold,
                            fontSize: FontSize.s30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.8,
                      height: size.height * 0.1,
                      child: const TextUtils(
                        textAlign: TextAlign.center,
                        text: AppStrings.onBoardingSubTitle1,
                        color: Colors.black,
                        fontWeight: FontWeightManager.medium,
                        fontSize: FontSize.s15,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.07,
                  ),
                  Center(
                    child: SizedBox(
                      width: size.width * 0.7,
                      height: size.height * 0.3,
                      child: SvgPicture.asset(
                        ImagesAssets.splash1,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Spacer(),
                  OnBoardingTimerButton(
                    value: 0.35,
                    function: () {
                      Get.to(
                        () => const OnBoarding2(),
                        transition: Transition.fadeIn,
                        duration: const Duration(
                          milliseconds: 800,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
