import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'Settings.dart';

import 'Colors.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(widget.title),
          leading: 
            IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: _openDrawer,
            ),
          
        ),
        drawer: Drawer(
          child: Stack(
            children:[ 
              Container(
                decoration:  const BoxDecoration(
        image: DecorationImage(image: AssetImage('images/back2.jpg'),
        fit: BoxFit.cover)
              ))
              
              ,Column(
                children: [
                 
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,40,0,80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[ IconButton(
                        
                        icon: const Icon(Icons.close),
                        color:kSign ,
                        iconSize: 45,
                        onPressed: _closeDrawer,
                      ),
                                ]),
                  ),
                
                  ListTile(iconColor:ktexttaskbar,
                    leading: Transform.translate(
                      offset: Offset(40, 0),
                      child: const Icon(Ionicons.person_circle_outline,size: 32 ) ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Profile ",
                      style: TextStyle(
                        color: ktexttaskbar,
                        fontSize: 27
                      ),
                      ),
                    ),
                    onTap: () {
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(iconColor:ktexttaskbar,
                    leading: Transform.translate(
                      offset: const Offset(40, 0),
                      child: const Icon(Icons.settings,size: 32)),
          
                    title: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Settings",
                       style: TextStyle(
                        color: ktexttaskbar,
                        fontSize: 27
                      ),),
                    ),
                    onTap: () {
                      Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SETTING()),
            );
                    },
                  ),
                   const SizedBox(
                    height: 15,
                  ),
                  ListTile(iconColor:ktexttaskbar ,
                    leading: Transform.translate(
                      offset: const Offset(40, 0),
                      child: const Icon(Icons.phone,size: 32
                      ),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Contact us",
                       style: TextStyle(
                        color: ktexttaskbar,
                        fontSize: 27
                      ),),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ListTile(iconColor:ktexttaskbar,
                    leading: Transform.translate(
                      offset: const Offset(40, 0),
                      child: const Icon(Icons.logout,size: 32)),
                    title: const Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Text("Log out",
                       style: TextStyle(
                        color: ktexttaskbar,
                        fontSize: 27
                      ),),
                    ),
                    onTap: () {},
                  ), 
                ],
              ),]
          ),
        ),
        body: const Center(
          child: Text(
            'Press the menu button in the AppBar to open the drawer.',
          ),
        ),
      ),
    );
  }
}
