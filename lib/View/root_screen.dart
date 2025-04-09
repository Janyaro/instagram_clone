import 'package:demo/View/favourite_screen.dart';
import 'package:demo/View/home_screen.dart';
import 'package:demo/View/user_screen.dart';
import 'package:demo/search_screen.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int currentIndex = 0;
  List<Widget> screen = [
    HomeScreen(),
    SearchScreen(),
FavouriteScreen(),  
UserScreen()  
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade500,
        onTap: (index){
         setState(() {
           currentIndex = index;
         });
        },
        items:const [
      BottomNavigationBarItem(icon: Icon(Icons.home) , label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search) , label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.add_box_outlined) , label: 'Add'),
      BottomNavigationBarItem(icon: Icon(Icons.favorite) , label: 'Favourite'),
      BottomNavigationBarItem(icon: Icon(Icons.person) , label: 'Setting'),
      ]),
    );
  }
}
