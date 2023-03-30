import 'package:dashboard/pages/dashboard_view.dart';
import 'package:dashboard/pages/menu_side.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/size_configs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Admin Dashboard',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

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
