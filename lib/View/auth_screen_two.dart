import 'package:demo/Widget/reuse_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AuthScreenTwo extends StatefulWidget {
  const AuthScreenTwo({super.key});

  @override
  State<AuthScreenTwo> createState() => _AuthScreenTwoState();
}

class _AuthScreenTwoState extends State<AuthScreenTwo> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset('assets/logo.png')),
            TextFormField(
              controller: emailcontroller,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade900,
                filled: true,
                hintText: 'User name',
                border:const OutlineInputBorder()
              ),
            ),
           const SizedBox(height: 10,),
            TextFormField(
              controller: passwordcontroller,
              decoration: InputDecoration(
                fillColor: Colors.grey.shade900,
                filled: true,
                hintText: 'password',
                border:const OutlineInputBorder()
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){}, child:const Text('forget Password?' , style: TextStyle(color: Colors.blue),)),
            ),
           const SizedBox(height: 20,),
            ReuseBtn(title: 'Login', ontap: (){}),
           const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
  'assets/facebook_logo.svg',
  color: Colors.white,
  height: 30,
  width: 30,
),

                TextButton(onPressed: (){}, child:const Text('Sign Up with Facebook', style: TextStyle(color: Colors.blue , fontSize: 20 , fontWeight: FontWeight.w500),))
            ,],

            ),
           const  Row(
              children: [
                Expanded(child: Divider(color: Colors.grey,)),
            Padding(
              padding:  EdgeInsets.all(15.0),
              child: Text('OR', style: TextStyle( fontSize: 15 , fontWeight: FontWeight.w500) ),
            )
              ,Expanded(child: Divider(color: Colors.grey,)),
              
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Don't have an account",style: TextStyle( fontSize: 16 , fontWeight: FontWeight.w500)),
                TextButton(onPressed: (){}, child: Text('SignUp',style: TextStyle( fontSize: 16 , fontWeight: FontWeight.w500 , color: Colors.blue)))
              ],
            )
          
            
            
          ],
        ),
      ),
    );
  }
}