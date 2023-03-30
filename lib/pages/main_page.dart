import 'package:dashboard/constants/colors.dart';
import 'package:dashboard/constants/size_configs.dart';
import 'package:dashboard/pages/custom_menu_side.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
        body: Row(
      children: [
        const CustomMenuSide(),
        Expanded(
          flex: 4,
          child: Container(
            color: darkBlack,
          ),
        ),
      ],
    ));
  }
}
