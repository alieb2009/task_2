import '../core/app_export.dart';
// import '../presentation/app_navigation_screen/app_navigation_screen.dart';
// import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
// import '../presentation/authenticated_screen/authenticated_screen.dart';
// import '../presentation/authenticated_screen/binding/authenticated_binding.dart';
// import '../presentation/fuls_screen/binding/fuls_binding.dart';
// import '../presentation/fuls_screen/fuls_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_screen/login_screen.dart';
// import '../presentation/sign_up_screen/binding/sign_up_binding.dart';
// import '../presentation/sign_up_screen/sign_up_screen.dart';
// import '../presentation/splach_screen/binding/splach_binding.dart';
// import '../presentation/splach_screen/splach_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splachScreen = '/splach_screen';
  static const String loginScreen = '/login_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String authenticatedScreen = '/authenticated_screen';
  static const String fulsScreen = '/fuls_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [

    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),

    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
  ];
}
