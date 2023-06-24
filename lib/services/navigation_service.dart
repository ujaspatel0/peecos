import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> navigateAndRemoveTo(String routeName, {dynamic arguments}) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  void goBack() {
    return navigatorKey.currentState!.pop();
  }

  Future<dynamic> removeAllAndNavigateTo(String routeName) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
          (route) => route.isFirst,
    );
  }
}
