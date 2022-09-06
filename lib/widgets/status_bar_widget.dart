import 'package:flutter/material.dart';
import 'package:instagram/widgets/my_status_widget.dart';
import 'package:instagram/widgets/others_status_widget.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          SizedBox(width: 5),
          MyStatusWidget(),
          OthersStatusWidget(),
        ],
      ),
    );
  }
}
