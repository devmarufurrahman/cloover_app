import 'package:clover000/features/auth/screen/login_screen.dart';
import 'package:clover000/features/splasho_screen/screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoute {
  static String loginScreen = "/login";
  static String splashScreen = "/";

  static String getLoginScreen() => loginScreen;
  static String getSplashScreen() => splashScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => SplashScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
  ];
}
