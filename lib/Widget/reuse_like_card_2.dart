import 'package:flutter/material.dart';

class ReuseLikeCard2 extends StatelessWidget {
  const ReuseLikeCard2({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
              leading:CircleAvatar(
                backgroundImage: AssetImage('assets/user.avif'),
                
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(text: TextSpan(
                      text: 'Karenne likes 3 posts' , style: TextStyle(fontSize: 14),
                      children: <TextSpan>[
                        
                        TextSpan(
                          text: '\t\t 4h',
                          style: TextStyle(color: Colors.grey.shade700)
                        )
                      ]
                    )),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                
                      children: [
                
                    Image.asset('assets/grid8.png' , width: 50,),
                    const SizedBox(width: 6,),
                    Image.asset('assets/grid7.png' , width: 50,),
                    const SizedBox(width: 6,),
                    Image.asset('assets/grid9.png' , width: 50,),
                      ],
                    )
                
                  ],
                ),
              ),
            )
          ;
  }
}