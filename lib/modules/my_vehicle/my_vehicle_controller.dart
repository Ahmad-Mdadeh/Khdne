import 'package:get/get.dart';

class MyVehicleController extends GetxController {

  RxInt? selectedItem;
  RxInt key = 0.obs;
  Map<int, bool> mp = {};

  void setSelectedItem(int index) {
    if (mp.isNotEmpty) {
      key.value = mp.keys.firstWhere((k) => mp[k] == true);
      if (key.value != index) {
        mp.updateAll((key, value) => false);
        mp[index] = true;
        key.value = mp.keys.firstWhere((k) => mp[k] == true);
      }
    } else {
      mp[index] = true;
      key.value = mp.keys.firstWhere((k) => mp[k] == true);
    }

  }
}
