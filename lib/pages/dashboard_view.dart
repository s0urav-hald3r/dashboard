import 'package:dashboard/widgets/add_new_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../constants/colors.dart';
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
      flex: 4,
      child: Container(
        color: darkBlack,
        padding: const EdgeInsets.all(20),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}