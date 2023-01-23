import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
      home:const Dice()));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int i=1;
  int j=1;
  void dice(){
   setState(() {
     i=Random().nextInt(6)+1;
     j=Random().nextInt(6)+1;
   });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.white,
        title: Center(
          child: Text("DICE",
            style:TextStyle(
              fontFamily:'Rubik80sFade',
              fontSize: 40,
                fontWeight:FontWeight.w500,
            color: Colors.black, ) ,
          ),
        ),
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: InkWell(onTap: (){
               dice();
              },
                child: Container(
                  height: 200,
                  // width: 200,
                  color: Colors.white,
                  child:Image(image: AssetImage('dices/di00$i.png')),
                ),
              ),
            ),
            Expanded(
              child: InkWell(onTap: (){
                dice();
               },
                child: Container(
                  height: 200,
                  // width: 200,
                    color: Colors.white,
                  child:Image(image: AssetImage('dices/di00$j.png'))
                ),
              ),
            )
          ],
        ),
      ),



    );
  }
}
