import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class UserBox extends StatelessWidget {
  const UserBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlack,
        border: Border.all(color: white60, width: 0.25),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(12.5),
      child: Row(
        children: [
          Container(
            height: SizeConfig.screenWidth! * 0.025,
            width: SizeConfig.screenWidth! * 0.025,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/icons/profile.png'))),
          ),
          const Gap(10),
          Text(
            'Hello, Deniz',
            style: GoogleFonts.poppins(
                fontSize: SizeConfig.screenWidth! * 0.01, color: Colors.white),
          ),
          const Gap(5),
          Icon(
            Icons.arrow_drop_down_rounded,
            size: SizeConfig.screenWidth! * 0.025,
            color: white60,
          )
        ],
      ),
    );
  }
}
