import 'package:dashboard/constants/size_configs.dart';
import 'package:dashboard/widgets/add_new_button.dart';
import 'package:dashboard/widgets/recent_openings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';
import '../widgets/calender_box.dart';
import '../widgets/component_section.dart';
import '../widgets/recent_candidates_section.dart';
import '../widgets/search_box.dart';
import '../widgets/user_box.dart';
import '../widgets/welcome_text.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: darkBlack,
        height: SizeConfig.screenHeight,
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const WelcomeText(),
                  Row(
                    children: [
                      SearchBox(),
                      const Gap(20),
                      const UserBox(),
                    ],
                  )
                ],
              ),
              const Gap(20),
              const AddNewButton(),
              const Gap(20),
              const ComponentSection(),
              const Gap(20),
              StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                children: const [
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: RecentCandidatesSection(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 1,
                    mainAxisCellCount: 1.5,
                    child: CalenderBox(),
                  ),
                  StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1,
                    child: RecentOpeningsSection(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
