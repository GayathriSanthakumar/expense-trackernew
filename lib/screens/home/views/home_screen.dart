import 'dart:math';

import 'package:expense_tracker1/screens/home/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var widgetList=[
    MainScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    // appBar:  AppBar(),
      bottomNavigationBar:ClipRRect(
        borderRadius: BorderRadius.vertical(
          top:Radius.circular(30)
        ),
        child:BottomNavigationBar(
          onTap:(value) {

          },
        backgroundColor:Color.fromARGB(255, 255, 255, 255),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 3,
        items:[
          BottomNavigationBarItem(
            icon:Icon(CupertinoIcons.home),
            label: 'Home'
            ),
             BottomNavigationBarItem(
            icon:Icon(CupertinoIcons.graph_square_fill),
            label: 'stats'
            ),
        ]
        
        ),
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    floatingActionButton: FloatingActionButton(
      onPressed:() {},
      
      shape:const CircleBorder(),
      child:Container(
        width: 60,
        height:60,
        decoration: BoxDecoration(
          shape:BoxShape.circle,
          gradient: LinearGradient(
            colors:[
              Theme.of(context).colorScheme.tertiary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary
            ], 
            transform:const GradientRotation(pi/4),
            )
        ),
      child:const Icon(
        CupertinoIcons.add
      ),
      ),
    ),
    body:  MainScreen(),
    );
  }
}