import 'package:flutter/material.dart';
import 'screens/home/views/home_screen.dart';
class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Expense Tracker",
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          surface: Color.fromRGBO(255, 255, 255, 0.877),
          onSurface: Color.fromARGB(255, 0, 0, 0),
          primary: Color(0xFF00b2E7),
          secondary: Color.fromARGB(255, 196, 34, 185),
          tertiary: Color(0xFFFF8D6C),
        )
      ),
      home: HomeScreen(),
    );
  }
}