import 'package:get/get.dart';
import 'package:khdne/modules/login/login_controller.dart';
import 'package:khdne/modules/onboarding/on_boarding_controller.dart';
import 'package:khdne/modules/register/register_controller.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<OnBoardingController>(OnBoardingController());

  }
}

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<RegisterController>(RegisterController());
  }
}

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(LoginController());

  }
}
