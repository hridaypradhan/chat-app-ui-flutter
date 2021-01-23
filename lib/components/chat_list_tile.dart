import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  final String name, lastMessage, day;
  final bool isUnread;

  ChatListTile({
    this.name,
    this.lastMessage,
    this.day,
    this.isUnread,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(
          'images/maleprofile.jpg',
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontWeight: isUnread ? FontWeight.bold : null,
        ),
      ),
      subtitle: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: lastMessage,
              style: TextStyle(
                color: Colors.white,
                fontWeight: isUnread ? FontWeight.bold : null,
              ),
            ),
            TextSpan(
              text: ' - $day',
            ),
          ],
        ),
      ),
      trailing: isUnread
          ? Icon(
              Icons.circle,
              color: Colors.blue,
              size: 15.0,
            )
          : null,
    );
  }
}
