import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/components/button_component.dart';
import 'package:khdne/components/my_vehicle_components.dart';
import 'package:khdne/modules/my_vehicle/my_vehicle_controller.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/scroll_glow.dart';
import 'package:khdne/utils/text_manager.dart';

class MyVehicleScreen extends StatelessWidget {
  final RxBool isSelected = false.obs;

  MyVehicleScreen({Key? key}) : super(key: key);
  final _myVehicleController = Get.find<MyVehicleController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(
      () => SafeArea(
        child: Scaffold(
          backgroundColor: ColorManager.white,
          body: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height - 92,
                    width: size.width ,
                    child: CustomScrollView(
                      shrinkWrap: true,
                      physics: const AlwaysScrollableScrollPhysics(),
                      slivers: [
                        SliverList(
                          delegate: SliverChildListDelegate(
                            [
                              Padding(
                                padding:  EdgeInsets.symmetric(vertical: size.height * 0.04),
                                child: const Align(
                                  alignment: Alignment.center,
                                  child: TextUtils(
                                    color: Colors.black,
                                    fontFamily: 'inter',
                                    text: "مركباتي",
                                    fontWeight: FontWeightManager.regular,
                                    fontSize: FontSize.s20,
                                  ),
                                ),
                              ),
                              ...List.generate(
                                10,
                                (index) => MyVehicleComponent(
                                  isSelected:
                                      (_myVehicleController.key.value == index)
                                          .obs,
                                  index: index,
                                  myVehicleController: _myVehicleController,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ButtonComponent(
                    borderRadius: 30.0,
                    text: "إضافة المركبة",
                    width: size.width * 0.85,
                    height: size.height * 0.065,
                    function: () {Get.toNamed("/addVehicleScreen");},
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
