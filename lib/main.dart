import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
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
           backgroundColor: Colors.amber, // Apply color to AppBar in dark theme
         ),
       ),
       debugShowCheckedModeBanner: false,
       color: Colors.blue,
       home: HomeActivity());
  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

MySnackBar(message, context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(title: Text('Home'),
    // titleSpacing: 0,
      // centerTitle: true,
      toolbarHeight: 60,

      // titleTextStyle: (titleColors.white),
      // toolbarOpacity: .5,
      // elevation: 150,
backgroundColor: Colors.blueGrey,
      actions: [
        IconButton(onPressed: (){MySnackBar('I am comment', context);}, icon: Icon(Icons.comment)),
        IconButton(onPressed: (){MySnackBar("I am Settings", context);} , icon: Icon(Icons.settings)),
        IconButton(onPressed: (){MySnackBar('I am search', context);}, icon: Icon(Icons.search))
      ],
    ),
    body: Text('this is the body of homeActivity'),
  );
  }
}