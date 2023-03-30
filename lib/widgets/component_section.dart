import 'package:dashboard/widgets/component_box.dart';
import 'package:flutter/material.dart';

class ComponentSection extends StatelessWidget {
  const ComponentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      runSpacing: 20,
      children: [
        ComponentBox(
          icon: Icons.person,
          primaryColor: Colors.blue,
          secondaryColor: Colors.blue.shade100,
        ),
        ComponentBox(
          icon: Icons.sms_rounded,
          primaryColor: Colors.orange,
          secondaryColor: Colors.orange.shade100,
        ),
        ComponentBox(
          icon: Icons.message_rounded,
          primaryColor: Colors.purple,
          secondaryColor: Colors.purple.shade100,
        ),
        ComponentBox(
          icon: Icons.favorite_outline_rounded,
          primaryColor: Colors.red,
          secondaryColor: Colors.red.shade100,
        ),
        ComponentBox(
          icon: Icons.notifications_none_rounded,
          primaryColor: Colors.green,
          secondaryColor: Colors.green.shade100,
        ),
      ],
    );
  }
}
