import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) => ListTile(
                leading: Icon(
                  AppRoutes.menuOptions[index].icon,
                  color: AppTheme.primaryDark,
                ),
                title: Text(AppRoutes.menuOptions[index].name),
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              )),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
