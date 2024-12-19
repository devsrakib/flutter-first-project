// import 'package:flutter/material.dart';

// void main() {
//   return runApp(MyApp());
// }


// class MyApp extends StatelessWidget{
//   @override 
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar( 
//           // leading: Icon(Icons.menu),
//           actions: [
//             IconButton(onPressed: (){}, icon: Icon(Icons.camera))
//           ],
//           title: Text("header",),
//         backgroundColor: Colors.teal,
//         ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               color: Colors.green,
//               height: MediaQuery.of(context).size.height * 0.3,
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Center(
//                   // left: 10,
//                  child:  Text('This is a text', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
//                 ),
//               )
//             ),
            
              
//           ],
//         ),
        
//       )
//       )
//       );
// }}



// import 'package:flutter/material.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       // appBar: AppBar(title: Text('Text App')),
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {

//     final pages = [
//       Container(color: Colors.blue,),
//       Container(color: Colors.yellow,),
//       Container(color: Colors.green,),
//       Container(color: Colors.red,),

//     ];

//     return SafeArea(
//       child: Scaffold(
//         floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.plus_one),),
//           // body:
//           //     LiquidSwipe(pages: pages)


//         appBar: AppBar(
//           title: Text('Test App',),
//           backgroundColor: Colors.blueGrey,
//           actions: [
//             IconButton(onPressed: (){}, icon: Icon(Icons.message), color: Colors.white,)
//           ],
//         ),
// body: 

        // body: Padding(padding: EdgeInsets.all(10),
        //   child:
        // Column(
        //   children: [

        //     Expanded(
        //       flex: 1,
        //         child: Container(
        //           color: Colors.green,
        //           child: GridView.count(
        //               crossAxisSpacing: 10,
        //               mainAxisSpacing: 10,
        //               crossAxisCount: 2, children: [
        //             Container(
        //               width: 200,
        //               height: 200,
        //               color: Colors.red,

        //             ),
        //             Container(
        //               width: 250,
        //               height: 200,
        //               color: Colors.red,

        //             ),
        //             Container(
        //               width: 200,
        //               height: 200,
        //               color: Colors.red,

        //             ),
        //             Container(
        //               width: 200,
        //               height: 200,
        //               color: Colors.red,

        //             )
        //           ],),
        //         ))
        //   ],
        // )
        // ),

        // body: SingleChildScrollView(
        //   scrollDirection: Axis.vertical,
        //   child: Padding(padding: EdgeInsets.all(20), child: Column(
        //     children: [
        //       Center(
        //         child:  Container(
        //             height: MediaQuery.of(context).size.height * .5,
        //             width: MediaQuery.of(context).size.width * 1,
        //             color: Colors.blueGrey,
        //             child: Center(
        //               child: Text('hello'),
        //             ),
        //           ),
        //       ),
        //       SizedBox(
        //         height: 200, // Specify a fixed height for the ListView
        //         child: ListView(
        //           children: [
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //             ListTile(
        //               title: Text('This is ListTile'),
        //               subtitle: Text('This is subtitle'),
        //               leading: CircleAvatar(
        //                 child: Icon(Icons.message),
        //               ),
        //               trailing: Icon(Icons.add_a_photo),
        //               onLongPress: () {
        //                 print('hello');
        //               },
        //             ),
        //           ],
        //         ),
        //       ),
        //       Stack(
        //         alignment: Alignment.bottomCenter,
        //       clipBehavior: Clip.none,
        //         children: [
        //           Container(
        //             width: 200,
        //             height: 200,
        //             color: Colors.amber,
        //           ),
        //           Positioned(bottom: -20, child: CircleAvatar(radius: 50,))
        //         ],
        //       ),
        //       Image.asset('images/cat.jpeg'),
        //       // LiquidSwipe(pages: pages)
        //       Card(
        //         elevation: 10,
        //         shape: BeveledRectangleBorder(
        //           borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
        //         ),
        //         child: Container(
        //           width: 200,
        //           height: 200,
        //           // child: ,
        //         ),
        //       ),
        //
        //     ],
        //   ),)
        // ),
//       ),

//     );
//   }
// }


// import 'package:appone/Page1.dart';
// import 'package:appone/Page2.dart';
// import 'package:appone/Page3.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   PageController _controller = PageController(
//     initialPage: 0
//   );
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: PageView(
//           scrollDirection: Axis.vertical,
//           controller: _controller,
//           children: [
//             Page1(),
//             Page2(),
//             Page3()
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:appone/Page1.dart';
import 'package:appone/Page2.dart';
import 'package:appone/Page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
        var _currentIndex = 0;
        final pages = [
          Page1(),
          Page2(),
          Page3()
        ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.umbrella),
            label: 'umbrella',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.balance),
            label: 'balance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
        ],
        onTap: (index){
setState(() {
  _currentIndex = index;
});
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
