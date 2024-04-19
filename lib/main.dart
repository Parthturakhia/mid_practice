 import 'package:flutter/material.dart';
import 'package:mid_practice/profilePage.dart';
import 'package:mid_practice/secondPage.dart';

import 'bottomNavigation.dart';
import 'main_notification.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Demo(),
  ));
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('yooo'),),
      body: Container(
        
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg_image.png'),
              fit: BoxFit.cover, // Ensures the image covers the entire background
            ),
          ),
          child: Column(
            children: [
              const TextField(
                style: TextStyle(),
              decoration: InputDecoration(

                hintText: 'Enter number ',
              ),
              ),
              const TextField(

                style: TextStyle(),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter number ',
                ),
              ),

              const SizedBox(height: 40,),
              Row(
                children: [
                  TextButton(onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return CompanyNotificationPage();
                      },));
                    });
                  }, child: const Text('text')),

                  SizedBox(width: 20,),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return ProfilePage();
                      },));
                    });
                  }, child: const Text('eleveted')),

                  SizedBox(width: 20,),

                  TextButton.icon(onPressed: (){
                    print('yooo');

                  }, label: Text('IBI'), icon: Icon(Icons.ac_unit), ),

                  SizedBox(width: 20,),

                  FloatingActionButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SecondPage();
                    },));
                  },
                    child: Icon(Icons.navigate_next),
                  ),





                  // Container(
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage('assets/bg_image.png'),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //
                  //   child: Column(
                  //     children: [
                  //
                  //       Text('hii')
                  //     ],
                  //   ),
                  //   ),

                ],
              )
            ],

          ),
        ),
      ),
        bottomNavigationBar: BottomNavigation(),
    );
  }
}
