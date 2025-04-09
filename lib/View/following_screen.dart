import 'package:demo/Widget/ReuseLikeCard.dart';
import 'package:demo/Widget/reuse_like_card_2.dart';
import 'package:flutter/material.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  // List<String> userImage = [
  // 'assets/Oval.png',
  // 'assets/Oval2.png',
  // 'assets/Oval2.png',
  // 'assets/Oval2.png',
  // 'assets/Oval2.png',
  // ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context,index){
                if(index%2==0){
                  return Reuselikecard(userImage:'assets/user.avif',img: 'assets/grid1.png');
                }
                else{
                  return ReuseLikeCard2();
                }
              }),
            ),
           ],
        ),
      ),
    );
  }
}