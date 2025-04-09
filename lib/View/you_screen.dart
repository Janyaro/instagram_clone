import 'package:demo/Widget/ReuseLikeCard.dart';
import 'package:demo/Widget/follow_user_card.dart';
import 'package:demo/Widget/reuse_like_card_2.dart';
import 'package:flutter/material.dart';

class YouScreen extends StatefulWidget {
  const YouScreen({super.key});

  @override
  State<YouScreen> createState() => _YouScreenState();
}

class _YouScreenState extends State<YouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,  // Give more space to the first ListView
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                if (index == 1) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Today', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      Reuselikecard(img: 'assets/user.avif', userImage: 'assets/user.avif')
                    ],
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Yesterday', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                        ReuseLikeCard2()
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          SizedBox(height: 10,),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              textAlign: TextAlign.start,
              'This Week', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ),
          Expanded(
            flex: 3,              child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return FollowUserCard(); // Assuming FollowUserCard is the correct widget to display
              },
            ),
          ),
        ],
      ),
    );
  }
}
