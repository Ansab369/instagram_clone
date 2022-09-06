import 'package:flutter/material.dart';
import 'package:instagram/screens/screen_home.dart';
import 'package:instagram/screens/screen_profile.dart';
import 'package:instagram/screens/screen_reels.dart';
import 'package:instagram/screens/screen_search.dart';
import 'package:instagram/screens/screen_shop.dart';
import 'package:instagram/widgets/bottom_navigationbar.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    SearchScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int newIndex, _) {
            return _pages[newIndex];
          }),
      bottomNavigationBar: BottonNavigationBarWidget(),
    );
  }
}
