import 'package:auto_size_text/auto_size_text.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_professional/widgets/camera/take-photo-view.widget.dart';

class MobileAppBar extends StatelessWidget {
  takePicture(CameraLensDirection direction) async {
    final cameras = await availableCameras();
    CameraDescription firstCamera;

    if (direction == CameraLensDirection.front) {
      firstCamera =
          cameras.firstWhere((element) => element.lensDirection == direction);
    } else if (direction == CameraLensDirection.back) {
      firstCamera =
          cameras.firstWhere((element) => element.lensDirection == direction);
    }

    Get.to(TakePictureView(camera: firstCamera));
  }

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
            icon: Icon(Icons.add_a_photo_outlined),
            onPressed: () {
              Get.defaultDialog(
                title: 'Selecione a câmera',
                titleStyle: TextStyle(color: Colors.white),
                content: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(Icons.camera, color: Colors.white),
                              onPressed: () {
                                takePicture(CameraLensDirection.front);
                                Get.back();
                              },
                            ),
                            Text(
                              'Frontal',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            IconButton(
                                icon:
                                    Icon(Icons.camera_alt, color: Colors.white),
                                onPressed: () {
                                  takePicture(CameraLensDirection.back);
                                  Get.back();
                                }),
                            Text(
                              'Traseira',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                backgroundColor: Colors.black87,
                textCancel: '',
                textConfirm: '',
                buttonColor: Colors.transparent,
                cancelTextColor: Colors.white,
                confirmTextColor: Colors.white,
              );
            },
          ),
        ),
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
