import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/size_configs.dart';

class SearchBox extends StatelessWidget {
  SearchBox({
    super.key,
  });

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlack,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(7.5),
      child: Row(
        children: [
          const Gap(5),
          Container(
            color: Colors.transparent,
            width: SizeConfig.screenWidth! * 0.2,
            child: TextField(
              controller: searchController,
              cursorColor: white60,
              style: GoogleFonts.poppins(
                  color: white60,
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.screenWidth! * 0.01),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: GoogleFonts.poppins(
                    color: white60,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.screenWidth! * 0.01),
              ),
            ),
          ),
          const Gap(5),
          Container(
            decoration: BoxDecoration(
                color: green, borderRadius: BorderRadius.circular(7.5)),
            padding: const EdgeInsets.all(10),
            child: const Icon(
              Icons.search,
              color: white60,
            ),
          )
        ],
      ),
    );
  }
}
