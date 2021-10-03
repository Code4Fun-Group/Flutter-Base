import 'package:flutter/material.dart';

import '../../presentation/example_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ExampleScreen.routeName:
        return _materialRoute(const ExampleScreen());
      default:
        return _materialRoute(const ExampleScreen());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute<dynamic>(builder: (_) => view);
  }
}
