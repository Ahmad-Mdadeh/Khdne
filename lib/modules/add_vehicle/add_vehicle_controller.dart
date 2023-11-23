import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddVehicleController extends GetxController {
  Rxn<String> selectedTheTypeCars = Rxn<String>();
  Rxn<String> selectedTheColorCars = Rxn<String>();

  final List<DropdownMenuItem<Object?>> listOfTypeCars = const [
    DropdownMenuItem(
      value: "KIA",
      child: Text("KIA"),
    ),
    DropdownMenuItem(
      value: "HONDA",
      child: Text("HONDA"),
    ),
  ];
  final List<DropdownMenuItem<Object?>> listOfColorsCars = const [
    DropdownMenuItem(
      value: "RED",
      child: Text("RED"),
    ),
    DropdownMenuItem(
      value: "BLACK",
      child: Text("BLACK"),
    ),
  ];
}
