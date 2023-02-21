import 'package:flutter/material.dart';

import 'field_page.dart';
import 'main.dart';

class AppRoute {
  AppRoute._();

  static MaterialPageRoute onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) {
        Widget page = _createPage(context, settings);
        return page;
      },
      settings: settings,
    );
  }

  static MaterialPageRoute onUnknownRoute(RouteSettings settings) {
    return onGenerateRoute(settings);
  }

  static Widget _createPage(BuildContext context, RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return const MyHomePage(title: 'Home Page');
      case "/fieldPage":
        return const FieldPage();
      default:
        return Scaffold(
          appBar: AppBar(title: Text(settings.name ?? "")),
          body: const Center(child: Text("noFindPage")),
        );
    }
  }
}
