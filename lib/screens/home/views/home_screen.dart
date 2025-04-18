import 'dart:math';

import 'package:expense_tracker1/screens/add_expense/views/add_expense.dart';
import 'package:expense_tracker1/screens/home/views/main_screen.dart';
import 'package:expense_tracker1/screens/stats/stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index=0;
   late Color selectedItem=Color.fromARGB(255, 8, 150, 232);
   Color unselectedItem=Color.fromRGBO(253, 251, 251, 0.441);
   
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
            setState(() {
              index=value;
            });
          },
          //fixedColor: Color.fromRGBO(227, 24, 24, 1),//home icon
          showSelectedLabels:false,
          showUnselectedLabels:false,  
          elevation: 3,
        items:[
          BottomNavigationBarItem(
            icon:Icon(CupertinoIcons.home),
            backgroundColor:index==1?selectedItem:selectedItem,
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
      onPressed:() {
        Navigator.push(context,
        MaterialPageRoute<void>(
          builder: (BuildContext context)=>const AddExpense(),
          ),
        );
      },
      
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
    body:  index==0
    ?MainScreen()
    :statScreen()
    );
  }
}