import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

//statelesswidget with button and all details
class  MyApp extends StatelessWidget{
 @override 
 Widget build(BuildContext context) {
return MaterialApp(
  title:'BG Change',
  debugShowCheckedModeBanner: false,
theme:ThemeData.dark(),
home:Scaffold(
  appBar: AppBar(
    title: Text('VIBGYOR',style: TextStyle(color: Colors.black)),
       backgroundColor: Colors.pink[100],
      ),
      body: HomePage(),
),
);
} 
}


//stateful
                    class HomePage extends StatefulWidget {
                    @override
                    _HomePageState createState() => _HomePageState();
                    }


class _HomePageState extends State<HomePage> {

              var colors =[
                Colors.purple,
                Colors.indigo,
                Colors.blue,
                Colors.green,
                Colors.yellow,
                Colors.orange,
                Colors.red,
              ];

              var currentColor = Colors.white;

              setRandomColor(){
                var rnd= Random().nextInt(colors.length);
                setState((){
                  currentColor= colors[rnd];
                });
              }

  @override
  Widget build(BuildContext context) {
    return Container(
      color:currentColor,
      child: Center(    
        child:RaisedButton(
          color:Colors.blue,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text('Tap to change colors'),
          onPressed: setRandomColor,

        ),
      ),
    );
}


}