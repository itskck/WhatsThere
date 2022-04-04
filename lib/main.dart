import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
void main() {
  runApp(MainClass());
}

class MainClass extends StatefulWidget{
  @override
  State<MainClass> createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  var ra=0.0,de=0.0;
  var x,y;

 
  @override
  Widget build(BuildContext context) {   
     gyroscopeEvents.listen((event) {
      setState(() {
        x=event.x;
        y=event.y;
      });
    });   
   
   
    return MaterialApp(
      theme: ThemeData(
        secondaryHeaderColor: Colors.black 
      ),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Text(ra.toString()),
              Text(de.toString()),

              IconButton(
                onPressed: (){
                  setState(() {
                    ra=x;
                    de=y;
                    
                  });
                  
                },
               icon: Icon(Icons.star)
               )
            ],

          ),
        ),
      ),
    );
  }
}