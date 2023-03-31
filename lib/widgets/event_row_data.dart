import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class EventDataRow extends StatelessWidget {
  const EventDataRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: SizeConfig.screenWidth! * 0.035,
          height: SizeConfig.screenWidth! * 0.035,
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(5)),
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
        const Gap(10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: SizeConfig.screenWidth! * 0.1,
              child: Text(
                'John Mark',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.0075,
                    fontWeight: FontWeight.w500,
                    color: white60),
              ),
            ),
            const Gap(5),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 2),
                  color: Colors.green.shade400,
                  borderRadius: BorderRadius.circular(5)),
              width: SizeConfig.screenWidth! * 0.1,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                child: Text(
                  'Business Analyst',
                  style: GoogleFonts.poppins(
                      fontSize: SizeConfig.screenWidth! * 0.0075,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70),
                ),
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 0.25),
              color: darkBlack,
              borderRadius: BorderRadius.circular(5)),
          width: SizeConfig.screenWidth! * 0.05,
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Center(
            child: Text(
              '05:56',
              style: GoogleFonts.poppins(
                  fontSize: SizeConfig.screenWidth! * 0.0075,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70),
            ),
          ),
        )
      ],
    );
  }
}
