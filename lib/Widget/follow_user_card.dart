import 'package:flutter/material.dart';

class FollowUserCard extends StatelessWidget {
  const FollowUserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
                    leading:const CircleAvatar(
                      backgroundImage: AssetImage('assets/user.avif'),
                    ),
                    title: RichText(
                      text: const TextSpan(
                        text: 'Keiro D, Zackjohn ',
                        style: TextStyle(fontWeight: FontWeight.w600),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\t and \t',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: 'Craig_love',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: '\t Likes \t',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                          TextSpan(
                            text: 'Joshu_I',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: ' photo',
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    trailing: TextButton(
                      style: TextButton.styleFrom( // Padding inside the button
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4), // Rectangular shape (no rounded corners)
    ),
                     backgroundColor: Colors.blue
                      ),
                      onPressed: (){}, child: Text('Following')),
                  );
                
  }
}