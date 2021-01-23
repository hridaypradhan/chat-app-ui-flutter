import 'package:flutter/material.dart';
import 'notification_badge.dart';

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final int notificationCount;

  NavigationButton({
    @required this.icon,
    this.notificationCount,
  });

  @override
  Widget build(BuildContext context) {
    final navIcon = Icon(
      icon,
      color: Colors.grey[300],
      size: 30.0,
    );

    return notificationCount == 0
        ? navIcon
        : Stack(
            alignment: Alignment.topRight,
            children: [
              navIcon,
              NotificationBadge(notificationCount),
            ],
          );
  }
}
