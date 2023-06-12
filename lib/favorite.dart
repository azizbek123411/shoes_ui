import 'package:flutter/material.dart';
class FavoritePage extends StatefulWidget {
  static const String id="favorite";
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Favorite",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
