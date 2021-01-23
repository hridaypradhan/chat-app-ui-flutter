import 'package:flutter/material.dart';

import 'navigation_button.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationButton(
            icon: Icons.chat,
            notificationCount: 1,
          ),
          NavigationButton(
            icon: Icons.people,
            notificationCount: 0,
          ),
          NavigationButton(
            icon: Icons.map,
            notificationCount: 0,
          ),
        ],
      );
  }
}