import 'package:flutter/material.dart';
import 'package:khdne/resources/colors_manager.dart';

class OnBoardingTimerButton extends StatelessWidget {
  final double value;
  final Function() function;

  const OnBoardingTimerButton(
      {Key? key, required this.value, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: function,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: size.height * 0.03,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: size.height * 0.1,
                width: size.height * 0.1,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.141),
                  child: CircularProgressIndicator(
                    value: value,
                    valueColor: const AlwaysStoppedAnimation<Color>(
                      ColorManager.primary,
                    ), // Adjust color as needed
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.085,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorManager.nextButton,
                ),
                child: const Icon(
                  Icons.arrow_back_sharp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
