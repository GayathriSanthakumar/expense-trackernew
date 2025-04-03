import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
    child:Padding(
      padding:const EdgeInsets.symmetric(horizontal: 15.0),
    child: Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height:60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color:Color.fromARGB(230, 79, 89, 226)
              ),
            ),
            const SizedBox(width: 10,),
            Column(
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
                  "Gayathri"
                )
              ],
            )
          ],
        )
      ],
    ),
    ),
    );
    
  }
}