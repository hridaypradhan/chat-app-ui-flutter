import 'package:chat_app_ui/components/chat_list_tile.dart';
import 'package:chat_app_ui/components/search_box.dart';
import 'package:chat_app_ui/components/story_icon.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';
import 'components/title_bar.dart';

class HomeScreen extends StatelessWidget {
  final stories = [
    null,
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
    StoryIcon(viewed: true),
    StoryIcon(viewed: false),
  ];

  final messageThreads = [
    ChatListTile( 
      day: 'Mon',
      name: 'Hriday Pradhan',
      lastMessage: 'Pizza is too good to be true!',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Tue',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Wed',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Thurs',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Fri',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Sat',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
    ChatListTile(
      day: 'Sun',
      name: 'Hriday Pradhan',
      lastMessage: 'Hellooo',
      isUnread: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: titleBar,
      bottomNavigationBar: BottomBar(),
      body: Column(
        children: [
          SearchBox(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) => index == 0
                  ? Container(
                    margin: EdgeInsets.symmetric(horizontal: 7.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CircleAvatar(
                          radius: 30.0,
                          backgroundColor: Colors.grey[600],
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 40.0,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'New Story',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                  : stories[index],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: messageThreads,
            ),
          )
        ],
      ),
    );
  }
}
