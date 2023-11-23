import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/components/button_component.dart';
import 'package:khdne/components/auth_text_from_filed.dart';
import 'package:khdne/components/background_image.dart';
import 'package:khdne/modules/register/register_controller.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/scroll_glow.dart';
import 'package:khdne/utils/text_manager.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final _registerController = Get.find<RegisterController>();

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
                 horizontal:   size.width * 0.06,
                      vertical:size.height * 0.05,
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
                            top: size.height * 0.05,
                            left: size.width * 0.6,
                          ),
                          child: const TextUtils(
                              text: "إنشاء حساب",
                              fontWeight: FontWeightManager.bold,
                              fontSize: FontSize.s25),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                        AuthTextFromField(
                          hintText: "الاسم",
                          validator: (value) {},
                          function: (value) {},
                          textInputType: TextInputType.name,
                          obscureText: false,
                          suffixIcon: const Icon(
                            Icons.person,
                            color: ColorManager.primary,
                            size: 20,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.045,
                        ),
                        AuthTextFromField(
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
                        Obx(
                          () => AuthTextFromField(
                            prefixIcon: IconButton(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onPressed: () {
                                _registerController.isObscured(
                                  !(_registerController.isObscured.value),
                                );
                              },
                              icon: Icon(
                                _registerController.isObscured.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xffB1B1B1),
                              ),
                            ),
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
                        ),
                        SizedBox(
                          height: size.height * 0.045,
                        ),
                        Obx(() => AuthTextFromField(
                              prefixIcon: IconButton(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onPressed: () {
                                  _registerController.isObscuredConfirm(
                                    !(_registerController
                                        .isObscuredConfirm.value),
                                  );
                                },
                                icon: Icon(
                                  _registerController.isObscuredConfirm.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: const Color(0xffB1B1B1),
                                ),
                              ),
                              hintText: "تأكيد كلمة السر",
                              validator: (value) {},
                              function: (value) {},
                              textInputType: TextInputType.name,
                              obscureText: false,
                              suffixIcon: const Icon(
                                Icons.lock,
                                color: ColorManager.primary,
                                size: 20,
                              ),
                            )),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Center(
                          child: ButtonComponent(
                            borderRadius: 30,
                            text: "تسجيل الدخول",
                            width: size.width * 0.87,
                            height: size.height * 0.065,
                            function: () {},
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: InkWell(
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () {
                                  Get.offNamed('/login');
                                },
                                child: const TextUtils(
                                  textDecoration: TextDecoration.underline,
                                  color: ColorManager.primary,
                                  text: "تسحيل الدخول",
                                  fontWeight: FontWeightManager.medium,
                                  fontSize: FontSize.s14,
                                ),
                              ),
                            ),
                            const TextUtils(
                              color: ColorManager.colorButton,
                              text: "لديك حساب؟ ",
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s14,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.035,
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              TextUtils(
                                textDecoration: TextDecoration.underline,
                                text: "الشروط والأحكام ",
                                fontWeight: FontWeightManager.medium,
                                fontSize: FontSize.s14,
                                color: ColorManager.primary,
                              ),
                              TextUtils(
                                text: "متابعتك تعني موافقتك على",
                                fontWeight: FontWeightManager.medium,
                                fontSize: FontSize.s14,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.9,
                          child: const Align(
                            alignment: Alignment.center,
                            child: TextUtils(
                              textDecoration: TextDecoration.underline,
                              text: "وسياسة الخصوصية",
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s14,
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
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
