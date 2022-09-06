import 'package:flutter/material.dart';
import 'package:instagram/constants/datas.dart';
import 'package:instagram/widgets/post/animation_control.dart';

/// posts
class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool isHeartAnimating = false;
  bool isLiked = false;
  bool isBookmarked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        10,
        (index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profilePicture[index]),
                    radius: 18,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    profileName[index],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(Icons.more_horiz)
                ],
              ),
            ),
            GestureDetector(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      postImages[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Opacity(
                    opacity: isHeartAnimating ? 1 : 0,
                    child: HeartAnimationWidget(
                      key: ValueKey(postImages[index]),
                      onEnd: () => setState(() {
                        isHeartAnimating = false;
                      }),
                      isAnimating: isHeartAnimating,
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 100,
                      ),
                    ),
                  ),
                ],
              ),
              onDoubleTap: () {
                setState(() {
                  isHeartAnimating = true;
                  isLiked = true;
                });
              },
            ),
            Row(
              children: [
                HeartAnimationWidget(
                  alWaysAnimate: true,
                  isAnimating: isLiked,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isLiked == true) {
                            isLiked = false;
                          } else {
                            isLiked = true;
                          }
                        });
                      },
                      icon: Icon(
                        isLiked ? Icons.favorite : Icons.favorite_outline,
                        color: isLiked ? Colors.red : Colors.black,
                      )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.mode_comment_outlined)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.send_outlined)),
                const Spacer(),
                HeartAnimationWidget(
                  alWaysAnimate: true,
                  isAnimating: isBookmarked,
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          if (isBookmarked == true) {
                            isBookmarked = false;
                          } else {
                            isBookmarked = true;
                          }
                        });
                      },
                      icon: Icon(
                        isBookmarked
                            ? Icons.bookmark
                            : Icons.bookmark_outline_outlined,
                        color: Colors.black,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Row(
                children: [
                  SizedBox(
                    width: 60,
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(profilePicture[2]),
                          radius: 10,
                        ),
                        Positioned(
                          // right: 10,
                          left: 35,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(profilePicture[4]),
                            radius: 10,
                          ),
                        ),
                        Positioned(
                          left: 17,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(profilePicture[3]),
                            radius: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text('Liked by '),
                  Text(
                    profileName[index],
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(' and '),
                  const Text(
                    'others',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 3, bottom: 3),
              child: Row(
                children: [
                  Text(
                    monthDate[index],
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
