import 'package:flutter/material.dart';
import 'package:khdne/resources/assets_manager.dart';
import 'package:khdne/resources/colors_manager.dart';

class BackGroundImageComponent extends StatelessWidget {
  const BackGroundImageComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Container(
      height: size.height *1,
       width: double.infinity,
       decoration:  BoxDecoration(
        image: DecorationImage(
            image: const AssetImage(ImagesAssets.background),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(ColorManager.white.withOpacity(0.05), BlendMode.modulate,)
        ),
      ),
    );
  }
}
