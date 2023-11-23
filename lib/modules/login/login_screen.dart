import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/components/button_component.dart';
import 'package:khdne/components/auth_text_from_filed.dart';
import 'package:khdne/components/background_image.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/scroll_glow.dart';
import 'package:khdne/utils/text_manager.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
      key: formKey,
      child: SafeArea(
        child: Scaffold(
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: Stack(
              children: [
                const Positioned(
                  left: 0,
                  right: 0,
                  child: BackGroundImageComponent(),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.105,
                      horizontal: size.width * 0.06,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.asset(
                            ImagesAssets.logo,
                            width: 112,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: size.height * 0.10, left: size.width * 0.55),
                          child: const TextUtils(
                              text: "تسجيل الدخول",
                              fontWeight: FontWeightManager.bold,
                              fontSize: FontSize.s25),
                        ),
                        SizedBox(
                          height: size.height * 0.07,
                        ),
                        AuthTextFromField(
                          prefixIcon: const Icon(
                            Icons.visibility,
                            color: Color(0xffB1B1B1),
                          ),
                          hintText: "رقم الهاتف",
                          validator: (value) {},
                          function: (value) {},
                          textInputType: TextInputType.name,
                          obscureText: false,
                          suffixIcon: const Icon(
                            Icons.phone,
                            color: ColorManager.primary,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.045,
                        ),
                        AuthTextFromField(
                          hintText: "كلمة السر",
                          validator: (value) {},
                          function: (value) {},
                          textInputType: TextInputType.name,
                          obscureText: false,
                          suffixIcon: const Icon(
                            Icons.lock,
                            color: ColorManager.primary,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        const TextUtils(
                          text: "هل نسيت كلمة السر؟",
                          fontWeight: FontWeightManager.bold,
                          fontSize: FontSize.s15,
                        ),
                        SizedBox(
                          height: size.height * 0.12,
                        ),
                        Center(
                          child: ButtonComponent(
                            borderRadius: 30,
                            text: "تسجيل الدخول",
                            width: size.width * 0.87,
                            height: size.height * 0.065,
                            function: () {
                              Get.offAllNamed("/myVehicleScreen");
                            },
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {
                                Get.offNamed('/register');
                              },
                              child: const TextUtils(
                                textDecoration: TextDecoration.underline,
                                color: ColorManager.primary,
                                text: "إنشاء حساب",
                                fontWeight: FontWeightManager.medium,
                                fontSize: FontSize.s14,
                              ),
                            ),
                            const TextUtils(
                              color: ColorManager.colorButton,
                              text: "ليس لديك حساب؟ ",
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s14,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
