import 'package:flutter/material.dart';

class CardComponents extends StatelessWidget {
  const CardComponents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        children: [
         const Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Text(
                      'Joshua_I',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text('Tokyo, japan',
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
                  ],
                ),
                IconButton(onPressed: () {}, icon:const Icon(Icons.more_horiz))
              ],
            ),
          ),
          Image.asset('assets/Rectangle.png'),
         const SizedBox(
            height: 10,
          ),
         const Padding(
            padding:  EdgeInsets.only(left:  8.0 ,right: 8),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.heart_broken,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.comment,
                      size: 30,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 10,
                      color: Colors.blue,
                    ),
                    Icon(Icons.circle, size: 10),
                    Icon(Icons.circle, size: 10),
                  ],
                ),
                Icon(
                  Icons.save_alt,
                  size: 35,
                )
              ],
            ),
          ),
         const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left:  8.0 , bottom: 4),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey[300],
                  backgroundImage:const AssetImage('assets/user.avif'),
                ),
                RichText(
                  text: const TextSpan(
                    text: '\t Liked by ', // Normal text
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Wasim \t',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      TextSpan(
                          text: 'and \t', style: TextStyle(color: Colors.white)),
                      TextSpan(
                        text: '44,650 others',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left:  8.0),
            child: RichText(
              text: TextSpan(
                text: 'Wasim ',
                style:const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text:
                        '— the game in Japan is amazing and I want to share some photos.',
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
