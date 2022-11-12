import 'dart:developer';

import 'package:fic1_slicing/features/detail/views/detail_furniture.dart';
import 'package:fic1_slicing/features/home/models/furniture.dart';
import 'package:fic1_slicing/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

part 'app_routes.dart';


class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    log('This is route: ${settings.name}');

    switch (settings.name) {
      case Routes.home:
        return HomeView.route();
      case Routes.detailFurniture:
        return DetailFurniture.route(furniture: settings.arguments as Furniture);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
