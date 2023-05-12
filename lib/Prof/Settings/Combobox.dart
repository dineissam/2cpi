
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'Colors.dart';
import 'Settings.dart';
import 'main.dart';
  

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {

    return DropdownButton<String>(
      value: dropdownValue,
      icon: Transform.translate(
                            offset: Offset(-35, 0),

        child: const Icon(Icons.arrow_drop_down,size: 32)),
      elevation: 16,
      style: const TextStyle(color: Colors.black,
       fontFamily: 'Gadugi',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,),
      
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      
      items: list.map<DropdownMenuItem<String>>((String value) {

        return DropdownMenuItem<String>(
          
          value: value,
          
          
          child: Row(
            
            children: [
              
              const Padding(
                
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Icon(Ionicons.language),
              ),
              
               const SizedBox(width: 5,),

              Text(value),
              const SizedBox(width: 195,),
              
            ],
          ),
        );
      }).toList(),
    );}}