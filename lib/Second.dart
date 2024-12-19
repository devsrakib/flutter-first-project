import 'package:flutter/material.dart';


class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Hero(tag: 'add', child: Icon(Icons.add_a_photo, size: 250,)),
      ),
    );
  }
}