import 'package:flutter/material.dart';

class StoryComponent extends StatelessWidget {
  const StoryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(
                  color: Colors.red,
                  width: 4
                    )
                  ),
                  child: ClipOval(child: Image.asset('assets/user.avif' , fit: BoxFit.cover,)),
                ),
              ),
              Text('Your Stories')
                ],
              );
  }
}