import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';
import '../widgets/menu_item.dart';

class CustomMenuSide extends StatelessWidget {
  const CustomMenuSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: lightBlack,
        child: Column(
          children: [
            Gap(SizeConfig.screenHeight! * 0.1),
            Image.asset(
              'assets/icons/logo.png',
              width: SizeConfig.screenWidth! * 0.05,
            ),
            Gap(SizeConfig.screenHeight! * 0.025),
            Text(
              'Smart HR - Application',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.01,
                  color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: SizeConfig.screenHeight! * 0.025,
              ),
              width: SizeConfig.screenWidth! * 0.125,
              height: 1,
              color: Colors.white30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MenuItem(
                    icon: 'assets/icons/dashboard.png', title: 'Dashboard'),
                MenuItem(icon: 'assets/icons/posts.png', title: 'Posts'),
                MenuItem(icon: 'assets/icons/pages.png', title: 'Pages'),
                MenuItem(
                    icon: 'assets/icons/categories.png', title: 'Categories'),
                MenuItem(
                    icon: 'assets/icons/appearance.png', title: 'Appearance'),
                MenuItem(icon: 'assets/icons/users.png', title: 'Users'),
                MenuItem(icon: 'assets/icons/tools.png', title: 'Tools'),
                MenuItem(icon: 'assets/icons/settings.png', title: 'Settings'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
