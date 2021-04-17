import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: AutoSizeText(
        'My Professional',
        minFontSize: 5,
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
              icon: Icon(Icons.notifications_none), onPressed: () {}),
        ),
        Container(
          margin: EdgeInsets.only(right: 10),
          child: IconButton(
              icon: Icon(
                Icons.chat_bubble_outline,
              ),
              onPressed: () {}),
        ),
      ],
    );
  }
}
