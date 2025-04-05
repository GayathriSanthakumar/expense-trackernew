import 'dart:math';

import 'package:expense_tracker1/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:Padding(
      padding:const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
    child: Column(
      children: [
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
           Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
            Container(
              width: 40,
              height:40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color:Color.fromARGB(230, 242, 148, 65)
              ),
            ),
            Icon(
              CupertinoIcons.person_fill,
              color:Theme.of(context).colorScheme.outline,
            )
          ],
        ),
            const SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome!",
                  style:TextStyle(
                    fontSize: 12,
                    fontWeight:FontWeight.w600,
                    color: Theme.of(context).colorScheme.outline
                  ),
                ),
                Text(
                  "Gayathri",
                  style:TextStyle(
                    fontSize: 15,
                    fontWeight:FontWeight.bold,
                    color: Color.fromARGB(170, 0, 0, 0)
                  ),
                )
              ],
            ),
          ],
        ),
            ],
        ),
        const SizedBox(height: 20,),
        Container(
          width: MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.width/2 ,
          decoration: BoxDecoration(
             gradient: LinearGradient(
            colors:[
              Theme.of(context).colorScheme.tertiary,
              Theme.of(context).colorScheme.secondary,
              Theme.of(context).colorScheme.primary
            ], 
            transform:const GradientRotation(pi/4),
            ),
            borderRadius: BorderRadius.circular(25),
            boxShadow:[
              BoxShadow(
                blurRadius: 4,
                color: Color.fromARGB(106, 111, 108, 108),
                offset: const Offset(5,5)
              )
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 12,),
              Text(
                ' ₹45000.00',
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 12,),
              Padding(
                padding:const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(162, 255, 255, 255),
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.arrow_up,
                            size: 12,
                            color: Color.fromARGB(255, 0, 255, 0),
                          )
                        ),
                      ),
                      const SizedBox(width: 8,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
               Text(
                'Income',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w400
                ),
              ),
               Text(
                ' ₹2500.00',
                 style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w500
                ),
              ),
                        ],
                      )
                    ],
                    
                  ),
                             Row(
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(162, 255, 255, 255),
                          shape: BoxShape.circle
                        ),
                        child: Center(
                          child: Icon(
                            CupertinoIcons.arrow_down,
                            size: 12,
                            color: Color.fromARGB(255, 240, 6, 6),
                          )
                        ),
                      ),
                      const SizedBox(width: 8,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
               Text(
                'Expenses',
                style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w400
                ),
              ),
               Text(
                ' ₹800.00',
                 style: TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(228, 255, 255, 255),
                  fontWeight: FontWeight.w500
                ),
              ),
                        ],
                      )
                    ],
                    
                  )

                ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transactions",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold
              ),
            ),
            GestureDetector(
              onTap: (){
                
              },
             child: Text(
              "View All",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(115, 93, 86, 86),
                fontWeight: FontWeight.bold
              ),
            ),
            ),
          ],
        ),
       const SizedBox(height: 20,),
       Expanded(
       child:ListView.builder(
        itemCount:transactionsData.length,
        itemBuilder: (context,int i){
          return Padding(
            padding:const EdgeInsets.only(bottom: 16.0),
           child:Container( 
          decoration:BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12)
          ),
          child: Padding(
            padding:const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color:transactionsData[i]['color'],
                            shape: BoxShape.circle
                          ),
                        ),
                         transactionsData[i]['icon']
                      ],
                    ),
                    SizedBox(width: 12),
                    Text(
                      transactionsData[i]['name'],
                      style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500
                  ),
                    ),
                  ],
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Text(
                       transactionsData[i]['totalAmount'],
                      style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.w500
                  ),
                    ),
                     Text(
                       transactionsData[i]['date'],
                      style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(65, 0, 0, 0),
                    fontWeight: FontWeight.w500
                  ),
                    ),
                      ],
                    )
              ],
            ),
            ),
           ),
          );
        }
       ),
       )
      ],
    ),
    ),
    );
    
  }
}