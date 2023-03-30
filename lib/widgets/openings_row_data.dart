import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class OpeningsRowData extends StatelessWidget {
  const OpeningsRowData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.55,
          color: white60,
          height: 0.25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 2),
                    color: Colors.purple.shade300,
                    borderRadius: BorderRadius.circular(5)),
                width: SizeConfig.screenWidth! * 0.1,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Text(
                    'UI/UX Designer',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.1,
                child: Center(
                  child: Text(
                    '01-04-2022',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: white60),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.1,
                child: Center(
                  child: Text(
                    'flutter-web@mystic.in',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: white60),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
