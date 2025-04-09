import 'package:demo/View/following_screen.dart';
import 'package:demo/View/you_screen.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, 
    child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        bottom: TabBar(tabs: [
          Tab(child: Text('Following'),),
          Tab(child: Text('You'),),
        ]),
      ),
      body: TabBarView(
        children: [
         FollowingScreen(),
         YouScreen()
      ]),
    )
    
    );
  }
}