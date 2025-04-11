import 'package:flutter/material.dart';

class PostWidet extends StatelessWidget {
  final String img;
  const PostWidet({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 100, // or whatever height works best for your design
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context , index){
      return Padding(
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
          child: ClipOval(child: Image.asset(img , fit: BoxFit.cover,)),
        ),
      );
    }
  ),
)
;
  }
}