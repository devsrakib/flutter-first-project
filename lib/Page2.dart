import 'package:appone/Second.dart';
import 'package:flutter/material.dart';
import 'package:appone/TabSecond.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera),
              ),
              Tab(icon: Icon(Icons.message)),
            ]),
          ),
          body: TabBarView(children: [TabPage(), Second()]),
        ));
  }
}
