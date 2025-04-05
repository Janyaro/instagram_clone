
import 'package:demo/View/auth_screen_two.dart';
import 'package:demo/View/home_screen.dart';
import 'package:demo/View/insta_authorization.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp() );
    
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
      home:const HomeScreen(),
    );
  }
}