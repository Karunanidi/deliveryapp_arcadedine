import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/iphone_14_15_pro_max_three_screen/iphone_14_15_pro_max_three_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String iphone1415ProMaxThreeScreen =
      '/iphone_14_15_pro_max_three_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    iphone1415ProMaxThreeScreen: (context) => Iphone1415ProMaxThreeScreen(),
    initialRoute: (context) => Iphone1415ProMaxThreeScreen()
  };
}
