import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  final int counter;

  NotificationBadge(this.counter);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: 8.0,
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 7.0,
        child: Text(
          counter.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
