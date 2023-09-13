import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:gift_card_app_ui/presentation/main/main_screen.dart';

class Routes {
  static const String mainScreen = "/";
  // static const String loginRoute = "/login";
  // static const String registerRoute = "/register";
  // static const String forgotPasswordRoute = "/forgotPassword";
  // static const String onBoardingRoute = "/onBoarding";
  // static const String mainRoute = "/main";
  // static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRouters(RouteSettings setting) {
    switch (setting.name) {
      case Routes.mainScreen:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Not Found Page")),
        body: const Center(child: Text("Not Found Page")),
      ),
    );
  }
}
