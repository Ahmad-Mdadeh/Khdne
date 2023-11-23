import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/resources/strings_manager.dart';
import 'package:khdne/resources/values_manager.dart';
import 'package:khdne/utils/text_manager.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

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
                ImagesAssets.line3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: AppPadding.p20),
                    child: TextButton(
                      onPressed: () {},
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
                            text: AppStrings.onBoardingTitle3,
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
                        text: AppStrings.onBoardingSubTitle3,
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
                        ImagesAssets.splash3,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      Get.offAllNamed('/login');
                    },
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: size.height * 0.03,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              width: double.infinity,
                              height: size.height * 0.12,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorManager.primary.withOpacity(0.8),
                              ),
                              child: const Center(
                                child: TextUtils(
                                  text: "يلا نبلش",
                                  fontWeight: FontWeightManager.bold,
                                  fontSize: FontSize.s25,
                                  color: ColorManager.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
