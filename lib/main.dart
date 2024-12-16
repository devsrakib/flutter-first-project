import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.green, // Apply color to AppBar
          ),
        ),
        darkTheme: ThemeData(
          primaryColor: Colors.amber,
          appBarTheme: AppBarTheme(
            backgroundColor:
                Colors.amber, // Apply color to AppBar in dark theme
          ),
        ),
        debugShowCheckedModeBanner: false,
        color: Colors.blue,
        home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  dynamic MySnackBar(dynamic message, dynamic context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),

        // titleSpacing: 0,
        // centerTitle: true,
        toolbarHeight: 60,

        // titleTextStyle: (titleColors.white),
        // toolbarOpacity: .5,
        // elevation: 150,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () {
                MySnackBar('I am comment', context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackBar("I am Settings", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackBar('I am search', context);
              },
              icon: Icon(Icons.search))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          elevation: 10,
          backgroundColor: Colors.blueGrey,
          onPressed: () {
            MySnackBar('I am action button', context);
          }),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
          currentIndex: 0,
          onTap: (int index) {
            if (index == 0) {
              MySnackBar('Home', context);
            }
            if (index == 1) {
              MySnackBar('Profile', context);
            }
            if (index == 2) {
              MySnackBar('Settings', context);
            }
          }),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(child: Text('Drawer Header')),
          ListTile(title: Text('Home')),
          ListTile(title: Text('Contact')),
          ListTile(title: Text('Service')),
          ListTile(title: Text('Settings')),
        ]),
      ),
      body: Text('this is the body of homeActivity'),
    );
  }
}
