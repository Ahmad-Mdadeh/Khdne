import 'package:get/get.dart';
import 'package:khdne/modules/my_vehicle/my_vehicle_controller.dart';

class MyVehicleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<MyVehicleController>(MyVehicleController());
  }

}