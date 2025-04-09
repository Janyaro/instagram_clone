import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
  List<String> option = [
    'IGTV',
    'Shop',
    'Style',
    'Sports',
    'Auto'
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
               const SizedBox(height: 10,),
                Row(
                  children:[
                    Expanded(
                      child: TextFormField(
                        decoration:InputDecoration(
                          contentPadding:const EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
                          prefixIcon:const Icon(Icons.search),
                          fillColor: Colors.grey.shade900,
                        filled: true,
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(4)
                        )
                        )
                      ),
                    ),
                    IconButton(onPressed: (){}, icon:const Icon(Icons.qr_code))
                  ]
                ),
               const SizedBox(height: 10,),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: option.length,
                    itemBuilder: (context, index){
                   return Container(
                    margin:const EdgeInsets.symmetric(horizontal: 4),
                    padding:const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Center(child: Text(option[index] , style: TextStyle(color: Colors.white),)),
                   );
                  }),
                ),
               const SizedBox(height: 10,),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                crossAxisSpacing: 10, 
                mainAxisSpacing: 10, 
                childAspectRatio: 1,
                ),
                itemCount: gridImage.length,
                 itemBuilder: (context, index){
                  return Image.asset(gridImage[index]);
                })
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}