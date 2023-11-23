import 'package:flutter/material.dart';
import 'package:khdne/resources/colors_manager.dart';
import 'package:khdne/resources/font_manager.dart';

class AuthTextFromField extends StatelessWidget {
  final TextInputType textInputType;
  final bool obscureText;
  final Function validator;
  final Function function;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? prefixIconColor;
  final Color? colorText;
  final String hintText;

  const AuthTextFromField({
    super.key,
    required this.validator,
    required this.function,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon,
    this.prefixIconColor,
    this.colorText,
    required this.hintText,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textDirection: TextDirection.rtl,
      onChanged: (value) => function(value),
      cursorColor: ColorManager.primary,
      keyboardType: textInputType,
      obscureText: obscureText,
      validator: (value) => validator(value),
      style: TextStyle(
        height: MediaQuery.of(context).size.height * 0.0013,
        fontSize: 17.0,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeightManager.medium,
          fontSize: FontSize.s15,
          color: Color(
            0xff272739,
          ),
        ),
        hintTextDirection: TextDirection.rtl,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorManager.primary,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
