import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_professional/widgets/camera/take-photo-view.widget.dart';

class WebAppBar extends StatelessWidget {
  takePicture() async {
    final cameras = await availableCameras();
    print(cameras);
    final firstCamera = cameras.first;

    Get.to(TakePictureView(camera: firstCamera));
  }

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
              icon: Icon(Icons.add_a_photo_outlined), onPressed: takePicture),
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
