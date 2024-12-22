import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {
    // Get screen width for responsiveness
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [Colors.pink, Colors.lightBlue],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    width: screenWidth * 0.4, // 40% of the screen width
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
