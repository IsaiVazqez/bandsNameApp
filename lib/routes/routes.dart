import 'package:bandnamesapp/routes/pages.dart';
import 'package:flutter/material.dart';

import '../models/item_menu.dart';

class AppRoutes {
  static const String initialRoute = 'HomeScreen';

  static final menuOptions = <ItemMenu>[
    ItemMenu(
      label: 'HomeScreen',
      route: initialRoute,
      screen: HomePage(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final item in menuOptions) {
      appRoutes.addAll({item.route: (BuildContext context) => item.screen});
    }
    return appRoutes;
  }
}
