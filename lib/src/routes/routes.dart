import 'package:flutter/material.dart';
import '../methods/export_route.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case ResisterScreen.routeName:
      return MaterialPageRoute(builder: (context) => ResisterScreen());
    case OnboardingScreen.routeName:
      return MaterialPageRoute(builder: (context) => const OnboardingScreen());
    default:
      return MaterialPageRoute(builder: (context) => const ErrorScreen());
  }
}
