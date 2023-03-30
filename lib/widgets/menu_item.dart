import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class MenuItem extends StatelessWidget {
  final String icon;
  final String title;
  const MenuItem({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Image.asset(
            icon,
            width: SizeConfig.screenWidth! * 0.0125,
            color: white60,
          ),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: SizeConfig.screenWidth! * 0.01, color: white60),
        )
      ],
    );
  }
}
