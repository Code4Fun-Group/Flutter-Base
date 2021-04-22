import 'package:flutter/material.dart';

import '../../features/example/presentation/example_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ExampleScreen.routeName:
        return _materialRoute(ExampleScreen());
      default:
        return _materialRoute(ExampleScreen());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
