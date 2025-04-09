import 'package:flutter/material.dart';

class Reuselikecard extends StatelessWidget {
  final String img;
  final String userImage;
  const Reuselikecard({super.key , required this.img, required this.userImage});

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(userImage),
              ),
              title: RichText(text:const TextSpan(
                text: 'Keiro D , zackjohn ',
                style: TextStyle(fontWeight: FontWeight.w600),
                children: <TextSpan>[
                  TextSpan(
                    text: '\t and \t',
                    style: TextStyle(fontSize: 14 , 
                fontWeight: FontWeight.w300),
                  ),
                  TextSpan(
                text: 'Craig_love',
                style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                text: '\t Likes \t',
                style: TextStyle(fontSize: 14 , 
                fontWeight: FontWeight.w300),
                
                  ),
                  TextSpan(
                text: 'Joshu_I ',
                style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                text: 'photo ',
                style: TextStyle(fontSize: 14 , 
                fontWeight: FontWeight.w300),
                ),
                ]
                
              )),
              trailing: ClipRRect(
                child: Image.asset(img ,width: 40,),
              ),
            );
  }
}