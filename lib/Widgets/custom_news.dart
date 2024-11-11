import 'package:flutter/material.dart';

class CustomNews extends StatelessWidget {
  const CustomNews({super.key, required this.img, required this.title, required this.description});
  final String img;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(img),
        Text(title,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        //SizedBox(height: 10,),
        Text(description,style: const TextStyle(fontSize: 16),),
      ],
    );
  }
}
