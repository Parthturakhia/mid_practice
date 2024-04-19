import 'package:flutter/material.dart';
import 'package:mid_practice/newPage.dart';
import 'package:mid_practice/secondPage.dart';

import 'main.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});


  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int boxindex = 0;


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(onTap: (boxindex){
      setState(() {
        switch (boxindex){
          case 0:
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Demo()));
            }
          case 1:
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
            }
          case 2:
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            }
        }
      });
    }, 
      currentIndex: boxindex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: 'home',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pageview),
          label: 'p1',

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page_outlined),
          label: 'p2',

        ),
      ],

    );
  }
}
