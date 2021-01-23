import 'package:chat_app_ui/components/search_box.dart';
import 'package:flutter/material.dart';
import 'components/bottom_bar.dart';
import 'components/title_bar.dart';
import 'fake_data.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: titleBar,
      bottomNavigationBar: BottomBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SearchBox(),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
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
