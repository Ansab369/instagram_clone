import 'package:flutter/material.dart';
import 'package:instagram/constants/colors.dart';

class MyStatusWidget extends StatelessWidget {
  const MyStatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: storyBackgroundColor)),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.white),
                    image: const DecorationImage(
                      image: AssetImage('assets/p5.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 5,
              bottom: 0,
              child: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Center(
                    child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 20,
                )),
              ),
            )
          ],
        ),
        Text('Your Story')
      ],
    );
  }
}
