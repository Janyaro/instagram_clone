import 'package:flutter/material.dart';

class ReuseBtn extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const ReuseBtn({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff3797EF),
              borderRadius: BorderRadius.circular(4)
            ),
            child: Center(
              child: Text(title , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
            ),
            ),
    );
  }
}