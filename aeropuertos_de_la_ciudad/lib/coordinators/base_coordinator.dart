import 'package:flutter/material.dart';
import 'package:aeropuertos_de_la_ciudad/homePage.dart';

class BaseCoordinator {
  void launchHome(BuildContext context) {
    Navigator.of(context).push(
      _createRoute(_createHome()),
    );
  }

  HomePage _createHome() {
    return HomePage();
  }

  MaterialPageRoute _createRoute(Widget page) {
    return MaterialPageRoute(builder: (BuildContext context) => page);
  }
}
