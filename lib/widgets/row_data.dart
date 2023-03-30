import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class RowData extends StatelessWidget {
  const RowData({
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
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth! * 0.02,
                      height: SizeConfig.screenWidth! * 0.02,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          'D',
                          style: GoogleFonts.poppins(
                              fontSize: SizeConfig.screenWidth! * 0.0125,
                              fontWeight: FontWeight.w600,
                              color: white60),
                        ),
                      ),
                    ),
                    const Gap(7.5),
                    Text(
                      'John Mark',
                      style: GoogleFonts.poppins(
                          fontSize: SizeConfig.screenWidth! * 0.0075,
                          fontWeight: FontWeight.w500,
                          color: white60),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 2),
                    color: Colors.red.shade300,
                    borderRadius: BorderRadius.circular(5)),
                width: SizeConfig.screenWidth! * 0.1,
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Text(
                    'Software Architect',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.075,
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
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.075,
                child: Center(
                  child: Text(
                    '01-03-2023',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: white60),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.03,
                child: Center(
                  child: Text(
                    '07',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.0075,
                        fontWeight: FontWeight.w500,
                        color: white60),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                width: SizeConfig.screenWidth! * 0.075,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'View',
                      style: GoogleFonts.poppins(
                          fontSize: SizeConfig.screenWidth! * 0.0075,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                    Text(
                      'Delete',
                      style: GoogleFonts.poppins(
                          fontSize: SizeConfig.screenWidth! * 0.0075,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
