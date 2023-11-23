import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khdne/modules/my_vehicle/my_vehicle_controller.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/text_manager.dart';

class MyVehicleComponent extends StatelessWidget {
  final RxBool isSelected;
  final int index;
  final MyVehicleController myVehicleController;

  const MyVehicleComponent({
    Key? key,
    required this.isSelected,
    required this.index,
    required this.myVehicleController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Obx(
      () => Padding(
        padding: EdgeInsets.symmetric(
          vertical: size.height * 0.01,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                myVehicleController.setSelectedItem(index);
              },
              child: Container(
                width: size.width * 0.7,
                height: size.height * 0.23,
                decoration: BoxDecoration(
                  border: Border.all(
                    color:
                        isSelected.value ? ColorManager.primary : Colors.white,
                    width: 3,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 3,
                    ),
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: size.height * 0.02,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  50,
                                ),
                                image: const DecorationImage(
                                  image: AssetImage(ImagesAssets.pic),
                                ),
                              ),
                            ),
                          ),
                          TextUtils(
                            text: "اودي 2020",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s14,
                            color: isSelected.value
                                ? ColorManager.primary
                                : Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextUtils(
                            text: "1كم/50 ل.س",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s14,
                            color: isSelected.value
                                ? ColorManager.primary
                                : Colors.black,
                          ),
                          TextUtils(
                            text: "سعر الكيلو:",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s14,
                            color: isSelected.value
                                ? ColorManager.primary
                                : Colors.black,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextUtils(
                            text: "1كم/50 ل.س",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s14,
                            color: isSelected.value
                                ? ColorManager.primary
                                : Colors.black,
                          ),
                          TextUtils(
                            text: "نسبة ربح الشركة: ",
                            fontWeight: FontWeightManager.medium,
                            fontSize: FontSize.s14,
                            color: isSelected.value
                                ? ColorManager.primary
                                : Colors.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
