import 'package:dashboard/widgets/row_data.dart';
import 'package:dashboard/widgets/row_header.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class RecentCandidatesSection extends StatelessWidget {
  const RecentCandidatesSection({
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
                'Recent Candidates',
                style: GoogleFonts.poppins(
                    fontSize: SizeConfig.screenWidth! * 0.01,
                    fontWeight: FontWeight.w600,
                    color: Colors.white70),
              ),
            ],
          ),
          const Gap(10),
          const RowHeader(),
          const Gap(10),
          Column(children: List.generate(7, (index) => const RowData()))
        ],
      ),
    );
  }
}
