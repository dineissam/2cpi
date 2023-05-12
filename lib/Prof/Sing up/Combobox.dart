
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import 'Colors.dart';
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
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: kField),
      underline: Container(
        height: 1.5,
        color: const Color.fromARGB(255, 172, 169, 169),
      ),
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
                child: Icon(Ionicons.person_outline),
              ),
              
               const SizedBox(width: 5,),

              Text(value),
              const SizedBox(width: 195,),
              
            ],
          ),
        );
      }).toList(),
    );}}