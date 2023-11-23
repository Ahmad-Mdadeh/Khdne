import 'package:flutter/material.dart';
import 'package:khdne/modules/add_vehicle/add_vehicle_controller.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/text_manager.dart';

class DropDownField extends StatelessWidget {
  final AddVehicleController addVehicleController;
  final String imagesAssets;
  final String ? selectedValue;
  final String hintText;
  final Function function;
  final List<DropdownMenuItem<Object?>> list;
  const DropDownField({
    Key? key,
    required this.addVehicleController,
    required this.imagesAssets, required this.selectedValue, required this.hintText, required this.function, required this.list,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return
       Row(
        children: [
          Expanded(
            child: Directionality(
            textDirection: TextDirection.rtl,
            child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                value:selectedValue,
                hint:  TextUtils(
                  text: hintText,
                  fontWeight: FontWeightManager.medium,
                  fontSize: FontSize.s15,
                  color: const Color(
                    0xff272739,
                  ),
                ),
                isExpanded: true,
                items:list,
                onChanged: (value) => function(value),
                icon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                ),
                iconEnabledColor: Colors.white,
                //Icon color
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: FontSize.s15,
                  fontFamily: "somar",
                  fontWeight: FontWeightManager.medium,
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.04,
          ),
          SizedBox(
            width: size.width * 0.04,
            child: Image.asset(
              imagesAssets,
            ),
          ),
        ],
      );

  }
}
