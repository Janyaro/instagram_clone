import 'package:flutter/material.dart';

class PostStory extends StatelessWidget {
  final Widget child;
  const PostStory({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
                    width: 70,
                    height:70,
                    decoration: BoxDecoration(
                    color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: Colors.grey
                      )
                    ),
                    child: child,
                  ),
    );
  }
}