import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp( 
    MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 14),
      appBar: AppBar(
        title: Text('dicee'),
        backgroundColor: Color.fromARGB(255, 94, 83, 83),
      ),
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget{
  _DicePageState createState()=> _DicePageState();
}
class _DicePageState extends State<DicePage>{
  var leftdice = 1;
  var rightdice=1;
  @override
  Widget build(BuildContext context) {
    
    return Center(
    child: Row(
      children: <Widget>[
       Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                
                rightdice=Random().nextInt(6)+1;
                leftdice=Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$leftdice.png'),),
          ),
          Expanded(
          child: TextButton(
            onPressed: (){
              setState(() {
                rightdice=Random().nextInt(6)+1;
                leftdice=Random().nextInt(6)+1;
                    });
            },
            child: Image.asset('images/dice$rightdice.png'),),
          ),
          
    
      ],
     ),
    );
  }
}

