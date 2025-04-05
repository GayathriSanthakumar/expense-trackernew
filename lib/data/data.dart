import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List<Map<String,dynamic>> transactionsData=[
  {
    'icon':const FaIcon(FontAwesomeIcons.burger,color: Color.fromARGB(255, 255, 255, 255)),
    'color':Color.fromARGB(255, 242, 250, 3),
    'name':'Food',
    'totalAmount': '-₹450.00',
    'date':'Today',
  },
  {
    'icon':const FaIcon(FontAwesomeIcons.bagShopping,color: Color.fromARGB(255, 255, 255, 255)),
     'color':Color.fromARGB(255, 67, 43, 174),
    'name':'shopping',
    'totalAmount': '-₹250.00',
    'date':'Today',
  },
   {
    'icon':const FaIcon(FontAwesomeIcons.heartCircleCheck,color: Color.fromARGB(255, 255, 255, 255)),
     'color':Color.fromRGBO(60, 174, 43, 1),
    'name':'Health',
    'totalAmount': '-₹250.00',
    'date':'Yesterday',
  },
  {
    'icon':const FaIcon(FontAwesomeIcons.plane,color: Color.fromARGB(255, 255, 255, 255)),
     'color':Color.fromRGBO(43, 63, 174, 1),
    'name':'Travel',
    'totalAmount': '-₹250.00',
    'date':'Yesterday',
  }
];