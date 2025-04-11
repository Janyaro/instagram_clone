import 'package:demo/Widget/post_story.dart';
import 'package:demo/Widget/post_widet.dart';
import 'package:demo/Widget/story_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> gridImage =[
    'assets/grid1.png',
    'assets/grid2.png',
    'assets/grid3.png',
    'assets/grid4.png',
    'assets/grid5.png',
    'assets/grid6.png',
    'assets/grid7.png',
    'assets/grid8.png',
    'assets/grid9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title:const Text('Jacob_w' , style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          centerTitle: true,
          actions: [IconButton(onPressed: (){}, icon:const Icon(Icons.line_weight_rounded))],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 202, 101, 134)
                    )
                  ),
                    child:const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/user.avif'),
                    ),
                  ),
                 const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('54' ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
                      Text('Posts' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),)
                    ],
                  ),
                 const Column(
                    children: [
                      Text('834' ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
                      Text('Follower' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),)
                    ],
                  ),
                 const Column(
                    children: [
                      Text('162' ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                      Text('Following' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),)
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 6,),
             const Text('Jacob West', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
              RichText(text:const TextSpan(
                text: 'digital goodies designer',
                
                children: <TextSpan>[
                  TextSpan(
                    text: '@janyaro',
                    style: TextStyle(color: Colors.blue),
                
                  )
                ]
              )),
             const Text('Everything is designed'),
             Container(
              height: 30,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: Colors.white
                )
              ),
              child:  const Center(
                child: Text('Edit Profile'),
              ),
             ),
             Row(
              children: [
             const PostStory(child: Center(child: Icon(Icons.add , color: Colors.black,),)),
                 PostStory(child: ClipOval(child: Image.asset('assets/user.avif' , fit: BoxFit.cover,))),
                 PostStory(child: ClipOval(child: Image.asset('assets/user.avif' , fit: BoxFit.cover,)))
              ],
             ),
            const Divider(),
            const TabBar(tabs: [
              Tab(
                child: Icon(Icons.grid_on),
                
              ),
              Tab(
                child: Icon(Icons.person_pin_outlined),
                
              ),
             ]),
             Expanded(
               child: TabBarView(children: [
                GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                  ), itemBuilder:(context,index){
                    return Image.asset(gridImage[index]);
                  }),
               const Center(child: Text('No user post')),
               ]),
             )
             
            ],
          ),
        ),
      ),
    );
  }
}