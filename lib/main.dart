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
          DrawerHeader(
            padding: EdgeInsets.all(0),
            decoration:BoxDecoration(
               color: Colors.blueGrey,
               borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
            ),
            child: Center(
              // Centers the content both horizontally and vertically
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Vertical alignment
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Horizontal alignment
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
                    ),
                    radius: 40, // Size of the profile picture
                  ),
                  SizedBox(height: 10), // Space between picture and name
                  Text(
                    'Rakibul',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Space between name and email
                  Text(
                    'rakibul@gmail.com',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              MySnackBar('I am Home', context);
            },
          ),
          ListTile(title: Text('Contact'), leading: Icon(Icons.contact_phone)),
          ListTile(title: Text('Service'), leading: Icon(Icons.support_agent)),
          ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
        ]),
      ),
      endDrawer: Drawer(
        child: ListView(children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            decoration:BoxDecoration(
               color: Colors.blueGrey,
               borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )
            ),
            child: Center(
              // Centers the content both horizontally and vertically
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Vertical alignment
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Horizontal alignment
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
                    ),
                    radius: 40, // Size of the profile picture
                  ),
                  SizedBox(height: 10), // Space between picture and name
                  Text(
                    'Rakibul',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5), // Space between name and email
                  Text(
                    'rakibul@gmail.com',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              MySnackBar('I am Home', context);
            },
          ),
          ListTile(title: Text('Contact'), leading: Icon(Icons.contact_phone)),
          ListTile(title: Text('Service'), leading: Icon(Icons.support_agent)),
          ListTile(title: Text('Settings'), leading: Icon(Icons.settings)),
        ]),
      ),
    //   body: Center(child: Container(
    //     width: 200,
    //     height: 200,
    //     child: Container(
    //       margin: EdgeInsets.fromLTRB(20, 10, 0, 10),
    //       width: 100,
    //       height: 100,
    //       decoration: BoxDecoration(
    //         color: Colors.blue
    //       ),
    //       child: Text('Hello'),
    //     ),
    //     alignment: Alignment.center,
    //     decoration: BoxDecoration(
    //       color: Colors.blueGrey,
    //       borderRadius: BorderRadius.all(Radius.circular(20)),
    //     ),
    //   ),)
    body: SingleChildScrollView(
  scrollDirection: Axis.vertical, // Enables horizontal scrolling
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 100,
        width: MediaQuery.of(context).size.width, 
      
        margin: EdgeInsets.all(8),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

          Container(
           height: 200, // 20% of screen height
          width: 200, // 50% of screen width
          //  alignment: Alignment.center,
          child: Image.network(
            'https://www.purina.in/sites/default/files/2023-05/feast.png',
            fit: BoxFit.cover,
          )
        ),
         Container(
           height: 200, // 20% of screen height
          width:200,
          //  alignment: Alignment.center,
          child: Image.network(
            'https://www.purina.in/sites/default/files/2023-05/feast.png',
            fit: BoxFit.cover,
          )
        ),
         Container(
           height: 200, // 20% of screen height
         width: 200,
          //  alignment: Alignment.center,
          child: Image.network(
            'https://www.purina.in/sites/default/files/2023-05/feast.png',
            fit: BoxFit.cover,
          )
        )
        ],)
        )
      ),
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
       Container(
        height: 100,
        width: 100,
        margin: EdgeInsets.all(8),
        child: Image.network(
          'https://e7.pngegg.com/pngimages/58/887/png-clipart-cat-cute-thing-cat.png',
          fit: BoxFit.cover,
        ),
      ),
      Container(
        height: 400,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(8),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.2, // 20% of screen height,
          width: MediaQuery.of(context).size.width * 0.5, // 50% of screen width
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(onPressed: (){}, 
              child: 
              Text("text Button")
              ),
              ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),
              OutlinedButton(onPressed: (){}, child: Text('Outlined Button')),
            ]
          ),
        )
      ),
    ],
  ),
),

    );
  }
}
