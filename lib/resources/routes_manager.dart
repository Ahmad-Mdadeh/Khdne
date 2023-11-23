import 'package:get/get.dart';
import 'package:khdne/bindings/add_vehicle_binding.dart';
import 'package:khdne/bindings/auth_binding.dart';
import 'package:khdne/bindings/my_vehicle_binding.dart';
import 'package:khdne/modules/add_vehicle/add_vehicle_screen.dart';
import 'package:khdne/modules/login/login_screen.dart';
import 'package:khdne/modules/my_vehicle/my_vehicle_screen.dart';
import 'package:khdne/modules/onboarding/on_boarding_screen.dart';
import 'package:khdne/modules/register/register_screen.dart';
import 'package:khdne/modules/splash/splash_screen.dart';

class AppRoute {
  static const splash = Routes.splash;
  static const onboarding = Routes.onboarding;
  static const login = Routes.login;
  static const register = Routes.register;
  static const myVehicleScreen = Routes.myVehicleScreen;
  static const addVehicleScreen = Routes.addVehicleScreen;

  static final getPages = [
    GetPage(name: Routes.splash, page: () => const SplashScreen()),
    GetPage(name: Routes.onboarding, page: () => const OnBoardingScreen(),binding: OnBoardingBinding(),transition: Transition.fadeIn,transitionDuration:  const Duration(milliseconds: 700),),
    GetPage(name: Routes.login, page: () =>  LoginScreen(),binding: LoginBinding(),transition: Transition.fadeIn,transitionDuration:  const Duration(milliseconds: 400),),
    GetPage(name: Routes.register, page: () =>  RegisterScreen(),binding: RegisterBinding(),transition: Transition.fadeIn,transitionDuration:  const Duration(milliseconds: 400),),
    GetPage(name: Routes.myVehicleScreen, page: () =>   MyVehicleScreen(),binding: MyVehicleBinding(),transition: Transition.fadeIn,transitionDuration:  const Duration(milliseconds: 500),),
    GetPage(name: Routes.addVehicleScreen, page: () =>   AddVehicleScreen(),binding: AddVehicleBinding(),transition: Transition.fadeIn,transitionDuration:  const Duration(milliseconds: 500),),

  ];
}

class Routes {
  static const splash = "/splash";
  static const onboarding = "/onboarding";
  static const login = "/login";
  static const register = "/register";
  static const myVehicleScreen = "/myVehicleScreen";
  static const addVehicleScreen = "/addVehicleScreen";
}
