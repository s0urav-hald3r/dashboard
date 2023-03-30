import 'package:dashboard/widgets/openings_row_data.dart';
import 'package:dashboard/widgets/openings_row_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class RecentOpeningsSection extends StatelessWidget {
  const RecentOpeningsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth! * 0.55,
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Recent Open Positions',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.01,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70),
              ),
            ],
          ),
          const Gap(10),
          const OpeningsRowHeader(),
          const Gap(10),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
                    children:
                        List.generate(7, (index) => const OpeningsRowData()))),
          )
        ],
      ),
    );
  }
}
