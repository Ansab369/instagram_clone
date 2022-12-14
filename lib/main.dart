import 'package:flutter/material.dart';
import 'package:instagram/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenMainPage(),
    );
  }
}
