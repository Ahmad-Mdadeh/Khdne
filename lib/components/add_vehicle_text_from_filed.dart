import 'package:flutter/material.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';

class AddTextFromField extends StatelessWidget {
  final TextInputType textInputType;
  final Function function;
  final Color? colorText;
  final String hintText;
  final String imagesAssets;

  const AddTextFromField({
    super.key,
    required this.function,
    required this.textInputType,
    this.colorText,
    required this.hintText,
    required this.imagesAssets,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            textDirection: TextDirection.rtl,
            onChanged: (value) => function(value),
            cursorColor: ColorManager.primary,
            keyboardType: textInputType,
            style: TextStyle(
              height: MediaQuery.of(context).size.height * 0.0013,
              fontSize: FontSize.s18,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontWeight: FontWeightManager.medium,
                fontFamily: "somar",
                fontSize: FontSize.s15,
                color: Color(
                  0xff272739,
                ),
              ),
              hintTextDirection: TextDirection.rtl,
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
