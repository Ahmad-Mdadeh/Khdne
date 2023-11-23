import 'package:flutter/material.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';
import 'package:khdne/utils/text_manager.dart';

class ButtonComponent extends StatelessWidget {
  final Color? color;
  final String text;
  final double width;
  final double height;
  final double borderRadius;
  final Function() function;

  const ButtonComponent({
    super.key,
    required this.borderRadius,
     this.color,
    required this.text,
    required this.width,
    required this.height,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.colorButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ),
            ),
          ),
          onPressed: function,
          child: TextUtils(
            text: text,
            color: Colors.white,
            fontWeight: FontWeightManager.bold,
            fontSize: FontSize.s25,
          ),
        ),
      );

  }
}
