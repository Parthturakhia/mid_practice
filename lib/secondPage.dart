import 'package:flutter/material.dart';

import 'bottomNavigation.dart';
import 'newPage.dart';


void main() {
  runApp(const SecondPage());
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool chkState = true;
  bool switchState=true;
  Color bgColor = Colors.red;
  double redSlider=0;
  double greenSlider=0;
  double blueSlider=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(title: const Text('My New App Demo')),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('RED/GREEN'),
                  Checkbox(
                      value: chkState,
                      onChanged: (value) =>
                          setState(() {
                            chkState = value!;
                            bgColor=switchState?value!?Colors.red:Colors.green:bgColor;
                          })
                  )
                ],
              ),
              Switch(value: switchState, onChanged: (value)=>
                  setState(() {
                    switchState=value!;
                  })
              ),
              Slider(value: redSlider, onChanged: (value)=> setState(() {
                redSlider=value!;
                bgColor=Color.fromRGBO(redSlider.ceil(), greenSlider.ceil(), blueSlider.ceil(), 1);
              }),min: 0,max: 255,),
              Slider(value: greenSlider, onChanged: (value)=> setState(() {
                greenSlider=value!;
                bgColor=Color.fromRGBO(redSlider.ceil(), greenSlider.ceil(), blueSlider.ceil(), 1);
              }),min: 0,max: 255,),
              Slider(value: blueSlider, onChanged: (value)=> setState(() {
                blueSlider=value!;
                bgColor=Color.fromRGBO(redSlider.ceil(), greenSlider.ceil(), blueSlider.ceil(), 1);
              }),min: 0,max: 255,),

              const SizedBox(height: 30,),

              Text("Current Color $bgColor"),

              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewPage();
                },));
              }, child: Text('next page')),
            ],


          ),
        ),
      bottomNavigationBar: BottomNavigation(),

    );
  }
}


