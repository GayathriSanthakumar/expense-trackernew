import 'package:expense_tracker1/screens/stats/chart.dart';
//import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

//import 'piechart.dart';

// ignore: camel_case_types
class statScreen extends StatelessWidget {
  const statScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
         padding:const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height:20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              //color: Color.fromARGB(255, 255, 0, 0),
              decoration: BoxDecoration(//for stats background
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
             child: MyChart(),
              ),

            )
          ],
        ),
      ),
    );
  }
}