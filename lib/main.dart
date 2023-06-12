import 'package:flutter/material.dart';
import 'package:shoes_ui/personal.dart';

import 'favorite.dart';
import 'home_page.dart';
import 'library.dart';
import 'message.dart';
import 'nav_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBar(),
      routes: {
        BottomNavBar.id:(context)=> const BottomNavBar(),
        HomePage.id:(context)=> const HomePage(),
        Message.id:(context)=> const Message(),
        FavoritePage.id:(context)=> const FavoritePage(),
        LibraryPage.id:(context)=> const LibraryPage(),
        PersonalPage.id:(context)=> const PersonalPage(),
      },
    );
  }
}
