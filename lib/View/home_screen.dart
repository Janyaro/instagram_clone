import 'package:demo/Widget/card_components.dart';
import 'package:demo/Widget/story_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        toolbarHeight: 80,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
        title: Image.asset(
          'assets/logo.png',
          width: 130,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.tv_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined))
        ],
      ),
     
      body: CustomScrollView(
        slivers: [
          // Sliver for the horizontal story list
          SliverToBoxAdapter(
            child: SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const StoryComponent();
                },
              ),
            ),
          ),
          // Sliver for the vertical card list
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const CardComponents();
              },
              childCount: 4, // Number of items in the list
            ),
          ),
        ],
      ),
      
    );
  }
}