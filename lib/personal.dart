import 'package:flutter/material.dart';
class PersonalPage extends StatefulWidget {
  static const String id="personal";
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Personal",style: TextStyle(fontSize: 50),),
      ),
    );
  }
}
