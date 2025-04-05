
import 'package:demo/Widget/reuse_btn.dart';
import 'package:flutter/material.dart';

class InstaAuthorization extends StatefulWidget {
  const InstaAuthorization({super.key});

  @override
  State<InstaAuthorization> createState() => _InstaAuthorizationState();
}

class _InstaAuthorizationState extends State<InstaAuthorization> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Center(child: Image.asset('assets/logo.png' , color: Colors.white,)),
           const SizedBox(height: 10,),
            SizedBox(
          width: 100,
          height: 100,
          child: ClipOval(
            child: Image.asset(
            'assets/user.avif',
        fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10,),
        const Text('Jacob_w' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
        const SizedBox(height: 10,),
        ReuseBtn(title: 'Login', ontap: (){}),
         const SizedBox(height: 10,),
          TextButton(onPressed: (){}, child: Text('Switch Account',style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600 , color: Colors.blue)))
          ],
        ),
      ),
      bottomNavigationBar:  Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const Text("Don't have an Account"),
              TextButton(onPressed: (){}, child:const Text('Sign Up', style: TextStyle(color: Colors.blue),))
            ],
           ),
    );
  }
}