import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listview1',
        name: 'List View Tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: 'listview2',
        name: 'List View Tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'alert',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.notifications),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Container',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow),
    MenuOption(
        route: 'inputs',
        name: 'Text Inputs',
        screen: const InputsScreen(),
        icon: Icons.input),
    MenuOption(
        route: 'slider',
        name: 'Slider & Checks',
        screen: const SliderScreen(),
        icon: Icons.slow_motion_video_outlined),
    MenuOption(
        route: 'listview',
        name: 'Infinite Scroll & Pull to refresh',
        screen: const ListViewBuilderScreen(),
        icon: Icons.list)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'home': (BuildContext context) => const HomeScreen(),
  };*/

  static Route<dynamic> OnGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
