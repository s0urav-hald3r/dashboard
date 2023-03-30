import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size_configs.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hello, Deniz',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.01,
                  color: Colors.white),
            ),
            const Gap(5),
            Image.asset(
              'assets/icons/hand.png',
              width: SizeConfig.screenWidth! * 0.01,
            ),
          ],
        ),
        Text(
          'Welcome to your dashboard',
          style: GoogleFonts.poppins(
              fontSize: SizeConfig.screenWidth! * 0.01, color: Colors.white),
        ),
      ],
    );
  }
}
