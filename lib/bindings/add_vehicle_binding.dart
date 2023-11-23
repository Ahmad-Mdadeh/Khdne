import 'package:get/get.dart';
import 'package:khdne/modules/add_vehicle/add_vehicle_controller.dart';

class AddVehicleBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AddVehicleController>(AddVehicleController());
  }

}