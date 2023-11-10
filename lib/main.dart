import 'package:bookly/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentaion/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimariyColor,
      ),
      home: const SplashView(),
    );
  }
}
