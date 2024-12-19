import 'package:appone/Second.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget 

{
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [Colors.pink, Colors.lightBlue],  )
      ),
    ),
      ),
      body: Center(
      child: CircleAvatar(
        radius: 50,
        child: GestureDetector(
          child: Hero(tag: 'add', 
          child: Icon(Icons.add_a_photo, size: 50,)
          ),
          onTap: () {
            Navigator.push(
             context, MaterialPageRoute(builder: (context) => Second())
             );
          },
        ),
      ),
    ),
    );
  }
}