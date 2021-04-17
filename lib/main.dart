import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:my_professional/pages/worker_provider/home.page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'OpenSansRegular',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}
