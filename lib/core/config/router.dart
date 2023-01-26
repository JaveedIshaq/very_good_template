import 'package:flutter/material.dart';

const String indexRoute = '/';
const String locationSelectionRoute = '/LocationSelectionView';
const String loginViewRoute = '/LoginView';
const String homeRoute = '/HomeView';
const String bottomNavigationRoute = '/BottomNavigation';
const String startUpViewRoute = '/StartUpView';

/// App Router
class Router {
  /// Generate Route Function
  Route<dynamic> generateRoute(RouteSettings settings) {
    //var args = settings.arguments;

    switch (settings.name) {
      case indexRoute:
      //return MaterialPageRoute<dynamic>(builder: (_) => const IntroScreen());
      case startUpViewRoute:
      //return MaterialPageRoute<dynamic>(builder: (_) => const StartUpView());

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
