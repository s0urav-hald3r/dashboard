import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';
import '../helpers/curve_painter.dart';

class ComponentBox extends StatelessWidget {
  final Color primaryColor;
  final Color secondaryColor;
  final IconData icon;
  const ComponentBox({
    super.key,
    required this.primaryColor,
    required this.secondaryColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.15,
      height: SizeConfig.screenHeight! * 0.25,
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(7.5)),
                padding: const EdgeInsets.all(5),
                child: Icon(
                  icon,
                  color: primaryColor,
                  size: SizeConfig.screenWidth! * 0.015,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Daily',
                    style: GoogleFonts.poppins(
                        fontSize: SizeConfig.screenWidth! * 0.01,
                        color: white60),
                  ),
                  const Gap(10),
                  const Icon(
                    Icons.more_vert,
                    color: white60,
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Employee',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.01, color: white60),
              ),
              SizedBox(
                width: SizeConfig.screenWidth! * 0.05,
                height: SizeConfig.screenHeight! * 0.05,
                child: CustomPaint(
                  painter: CurvePainter(xValues: [
                    0.0,
                    1.0,
                    0.0,
                    2.0,
                    3.0,
                    1.0,
                    1.5,
                  ], yValues: [
                    0.0,
                    1.0,
                    2.0,
                    3.0,
                    4.0,
                  ], strokeWidth: 2.0, color: primaryColor),
                ),
              )
            ],
          ),
          LinearPercentIndicator(
            width: SizeConfig.screenWidth! * 0.135,
            lineHeight: 2.5,
            percent: 0.3,
            barRadius: const Radius.circular(20),
            padding: EdgeInsets.zero,
            backgroundColor: secondaryColor,
            progressColor: primaryColor,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '1328',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.0075, color: white60),
              ),
              Text(
                '+20%',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.0075, color: white60),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
