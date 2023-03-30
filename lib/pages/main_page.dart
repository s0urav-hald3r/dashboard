import 'package:dashboard/constants/size_configs.dart';
import 'package:dashboard/pages/dashboard_view.dart';
import 'package:dashboard/pages/menu_side.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Row(
      children: const [
        MenuSide(),
        DashboardView(),
      ],
    ));
  }
}
