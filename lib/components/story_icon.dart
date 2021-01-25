import 'package:flutter/material.dart';

class StoryIcon extends StatelessWidget {
  final bool viewed;

  StoryIcon({this.viewed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30.0,
            child: CircleAvatar(
              radius: viewed ? 30.0 : 27.0,
              backgroundImage: AssetImage(
                'images/femaleprofile.jpg',
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Hriday',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
