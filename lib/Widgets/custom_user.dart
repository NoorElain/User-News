import 'package:flutter/material.dart';

class CustomUser extends StatelessWidget {
  const CustomUser({super.key, required this.img, required this.email, required this.name});
  final String img;
  final String email;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color(0xff47ff3f),
      color: Colors.green,
      margin: const EdgeInsets.all(10),
      shadowColor: Colors.black,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(img),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: TextStyle(color: Colors.white),),
                  Text(email,style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
