import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/components/add_vehicle_text_from_filed.dart';
import 'package:khdne/components/button_component.dart';
import 'package:khdne/components/drop_down_field.dart';
import 'package:khdne/modules/add_vehicle/add_vehicle_controller.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/scroll_glow.dart';
import 'package:khdne/utils/text_manager.dart';

class AddVehicleScreen extends StatelessWidget {
  AddVehicleScreen({Key? key}) : super(key: key);
  final _addVehicleController = Get.find<AddVehicleController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: MyBehavior(),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                0,
                size.width * 0.07,
                0,
                0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      size.width * 0.07,
                      0,
                      size.width * 0.07,
                      0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: size.height * 0.05),
                          child: const Center(
                            child: TextUtils(
                              text: "إضافة مركبة",
                              color: Color(0xff272739),
                              fontWeight: FontWeightManager.medium,
                              fontSize: FontSize.s20,
                              fontFamily: "somar",
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: Obx(
                            () => DropDownField(
                              list: _addVehicleController.listOfTypeCars,
                              function: (value) {
                                _addVehicleController
                                    .selectedTheTypeCars.value = value;
                              },
                              selectedValue: _addVehicleController
                                  .selectedTheTypeCars.value,
                              hintText: "نوع المركبة",
                              imagesAssets: ImagesAssets.drivenIcon,
                              addVehicleController: _addVehicleController,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: AddTextFromField(
                            imagesAssets: ImagesAssets.carIcon,
                            function: (value) {},
                            textInputType: TextInputType.text,
                            hintText: "الموديل:",
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: Obx(
                            () => DropDownField(
                              function: (value) {
                                _addVehicleController
                                    .selectedTheColorCars.value = value;
                              },
                              list: _addVehicleController.listOfColorsCars,
                              selectedValue: _addVehicleController
                                  .selectedTheColorCars.value,
                              hintText: "لون المركبة",
                              imagesAssets: ImagesAssets.paletteIcon,
                              addVehicleController: _addVehicleController,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.02,
                          ),
                          child: AddTextFromField(
                            imagesAssets: ImagesAssets.numberIcon,
                            function: (value) {},
                            textInputType: TextInputType.text,
                            hintText: "رقم اللوحة:",
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                          child: const Divider(
                            color: Color(0xffDADADA),
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.02),
                          child: const TextUtils(
                            text: "صور المركبة",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s15,
                            color: Color(0xff272739),
                          ),
                        ),
                        const TextUtils(
                          text: "1- صورة الميكانيك",
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSize.s12,
                          color: Color(0xff747474),
                          height: 1.9,
                        ),
                        const TextUtils(
                          text: "2- صورة المركبة",
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSize.s12,
                          color: Color(0xff747474),
                          height: 1.9,
                        ),
                        const TextUtils(
                          text: "3- صورة اللوحة ",
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSize.s12,
                          color: Color(0xff747474),
                          height: 1.9,
                        ),
                        const TextUtils(
                          text: "4- الهوية الشخصية",
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSize.s12,
                          color: Color(0xff747474),
                          height: 1.9,
                        ),
                        const TextUtils(
                          text: "5- الوكالة أو التفويض",
                          fontWeight: FontWeightManager.medium,
                          fontSize: FontSize.s12,
                          color: Color(0xff747474),
                          height: 1.9,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      0,
                      size.width * 0.07,
                      0,
                    ),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: size.width * 0.25,
                              child: Image.asset(
                                ImagesAssets.addImage,
                              ),
                            ),
                            ...List.generate(
                              4,
                              (index) => Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * 0.06),
                                child: SizedBox(
                                  width: size.width * 0.25,
                                  child: Image.asset(
                                    ImagesAssets.drivenIcon,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Center(
                    child: ButtonComponent(
                      borderRadius: 30.0,
                      text: "إضافة المركبة",
                      width: size.width * 0.85,
                      height: size.height * 0.065,
                      function: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
