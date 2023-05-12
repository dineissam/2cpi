import 'package:flutter/material.dart';
import 'Colors.dart';
import 'package:ionicons/ionicons.dart';

import 'Combobox.dart';





void main() {
  runApp(const SETTING());
}
bool _isEnabled = false;
List<String> list = <String>['ENGLISH', 'FRENCH','ARABIC'];

class SETTING extends StatefulWidget {
  const SETTING({super.key});

  @override
  State<SETTING> createState() => _SETTINGState();
}

class _SETTINGState extends State<SETTING> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,
home: Scaffold(
  
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        resizeToAvoidBottomInset: false,
        body: Stack(
          children:[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/back.jpg'),
                    fit: BoxFit.cover)),
          )
          ,
          Padding(
            padding: const EdgeInsets.fromLTRB(10,30,10,10),
            child: IconButton(
                icon: const Icon(
                  Icons.chevron_left,
                  color: Colors.black38,
                  size: 50,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
          ),
          
           Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 90,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(26, 23.37, 190, 56),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                      color: kSign,
                      fontSize: 30,
                      fontFamily: 'Gadugi',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,0,0),
                  child: const Text(
                    'Account',style: TextStyle(
                      color: ktextconst,
                      fontFamily: 'Gadugi',
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                
                        ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36,30,0,10),
                  child: ListTile(iconColor: Colors.black,
                    trailing: Transform.translate(
                      offset: Offset(-35, 0),
                      child: Icon(Icons.chevron_right,size: 32)),
                    title: Text('Edit Profile',
                    style: TextStyle(
                      fontFamily: 'Gadugi',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                    onTap: () {
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36,0,0,10),
                  child: ListTile(iconColor: Colors.black,
                    trailing: Transform.translate(
                      offset: Offset(-35, 0),
                      child: Icon(Icons.chevron_right,size: 32)),
                    title: Text('Change Password',
                    style: TextStyle(
                      fontFamily: 'Gadugi',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                    onTap: () {
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36,0,0,10),
                  child: ListTile(iconColor: Colors.black,
                    
                    title: Text('Initialize',
                    style: TextStyle(
                      fontFamily: 'Gadugi',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                    onTap: () {
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36,0,0,10),
                  child: ListTile(iconColor: Colors.black,
                    
                    title: Text('Remove',
                    style: TextStyle(
                      fontFamily: 'Gadugi',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                    ),),
                    onTap: () {
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(22,0,0,20),
                  child: ListTile(iconColor: ktextconst,
                    trailing: Transform.translate(
                      offset: Offset(-35, 0),
                      child: IconButton(
          icon: _isEnabled ? const Icon(Icons.toggle_on_outlined,size: 42,) : Icon(Icons.toggle_off_outlined,size: 42),
          onPressed:(){
          setState(() {
              _isEnabled = !_isEnabled;
            });}
              )),
                    title: Text('Notifications',
                    style: TextStyle(
                      fontFamily: 'Gadugi',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: ktextconst
                    ),),
                   
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(38,0,0,0),
                  child: const Text(
                    'Languages',style: TextStyle(
                      color: ktextconst,
                      fontFamily: 'Gadugi',
                      fontSize: 24,
                      fontWeight: FontWeight.w700
                    ),
                
                        ),
                ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(38,25,0,0),
                    child: DropdownButtonExample()),
                
        
        
                ]
        ),
        ]),
    




     ) );
  }
}
class NotificationTile extends StatefulWidget {
  @override
  _NotificationTileState createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {

  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  }