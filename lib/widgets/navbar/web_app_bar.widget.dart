import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Text('My Professional'),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
              icon: Icon(Icons.add_a_photo_outlined), onPressed: () {}),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
              icon: Icon(Icons.notifications_none), onPressed: () {}),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
              icon: Icon(Icons.chat_bubble_outline), onPressed: () {}),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child:
              IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {}),
        ),
      ],
    );
  }
}
