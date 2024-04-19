import 'package:flutter/material.dart';
import 'package:mid_practice/main.dart';

import 'bottomNavigation.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {

  bool checkstate = true;
  bool switchstate = true;
  double redslider = 0;
  double greenslider = 0;
  double blueslider = 0;
  Color bgcolor = Colors.red;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Color page'),),
      body: Padding(padding: EdgeInsets.all(20.0),
        child: Column(
          children: [

            Row(
              children: [
                Text('red/green'),
                Checkbox(value: checkstate,
                    onChanged: (value) =>
                        setState(() {
                          checkstate = value!;
                          bgcolor=switchstate?value!?Colors.red:Colors.green:bgcolor;
                        }),
                  ),
              ],
            ),
            Switch(value: switchstate, onChanged: (value) =>
                setState(() {

                }),
              ),
            Slider(value: redslider, onChanged: (value) =>
            setState(() {

            }),
            ),
            Slider(value: greenslider, onChanged: (value) =>
                setState(() {

                }),
            ),
            Slider(value: blueslider, onChanged: (value) =>
                setState(() {

                }),
            ),

            SizedBox(height: 30,),

            Text('currunt color value $bgcolor '),


          ],

        ),

        ),

      bottomNavigationBar: BottomNavigation(),

    );
  }
}
