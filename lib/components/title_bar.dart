import 'package:flutter/material.dart';

final PreferredSizeWidget titleBar = AppBar(
        backgroundColor: Colors.black,  
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/maleprofile.jpg'),
        ),
        title: Text(
          'Chats',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.8,
          ),
        ),
        actions: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[600],
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[600],
                child: Icon(
                  Icons.note_add,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
            ],
          ),
        ],
      );