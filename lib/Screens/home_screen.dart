import 'package:all_projects/Screens/news_screen.dart';
import 'package:all_projects/Screens/user_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Applications", style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NewsScreen(),));
            }, child: const Text("News Page",style: TextStyle(fontSize: 20,color: Colors.green),)),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const UserScreen(),));
            }, child: const Text("User Page",style: TextStyle(fontSize: 20,color: Colors.green),)),
          ],
        ),
      ),
    );
  }
}
