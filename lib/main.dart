import 'package:all_projects/Providers/news_provider.dart';
import 'package:all_projects/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providers/user_provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => NewsProvider(),),
        ChangeNotifierProvider(create: (BuildContext context) => UserProvider(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}