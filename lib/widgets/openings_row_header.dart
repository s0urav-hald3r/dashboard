import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/size_configs.dart';

class OpeningsRowHeader extends StatelessWidget {
  const OpeningsRowHeader({
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
              'Position Name',
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
              'Create Date',
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
              'Total Application',
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
