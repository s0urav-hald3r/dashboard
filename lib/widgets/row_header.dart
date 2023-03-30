import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size_configs.dart';

class RowHeader extends StatelessWidget {
  const RowHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.1,
          child: Center(
            child: Text(
              'Full Name',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.1,
          child: Center(
            child: Text(
              'Applied Position',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.075,
          child: Center(
            child: Text(
              'E-mail',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.075,
          child: Center(
            child: Text(
              'Registration Date',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.03,
          child: Center(
            child: Text(
              'Status',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
        Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth! * 0.075,
          child: Center(
            child: Text(
              'Operation',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.008,
                  fontWeight: FontWeight.w600,
                  color: Colors.white70),
            ),
          ),
        ),
      ],
    );
  }
}
