import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp( PointsCounter());
}
class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<PointsCounter> {
int teamApoints =0;

int teamBpoints =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.purple,
          title: Text(
            'Points Counter',
            style: TextStyle(
              color: Colors.white,
            ),

          ),
        ),
        
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            SizedBox(
              height:32,
            ),
            Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [ Column(
              children: [
            
                //team A
            
                Text('Team A',
                style: TextStyle(
                  fontSize: 42,
                ),
                ),
                //points
                   Text('$teamApoints',
                style: TextStyle(
                  fontSize: 150,
                ),
                ),
                //button 1a
                ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50)
                 ),
                  onPressed: (){
                  setState(() {
                    teamApoints++;
                  });
                  },
                 child: Text(
                  'Add 1 point',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
                const SizedBox(
                  height: 12,
                ),
            
                // BUTTON 2a
                
                  ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50)
                 ),
                  onPressed: (){
                    setState(() {
                      teamApoints+=2;
                    });
                  },
                 child: Text(
                  'Add 2 points',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
                const SizedBox(
                  height: 12,
                ),
            
                // BUTTON 3a
            
                  ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50),
                  
                 ),
                  onPressed: (){
                    setState(() {
                      teamApoints+=3;
                    });
                  },
                 child: Text(
                  'Add 3 points',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
                
              ],
            ),
            
            // divider

              SizedBox(
                height: 450,
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            
            //COLUMN TWO
            
              Column(
              children: [
            
                // TEAM B
            
                Text('Team B',
                style: TextStyle(
                  fontSize: 42,
                ),
                ),
                   Text('$teamBpoints',
                style: TextStyle(
                  fontSize: 150,
                ),
                ),
            
                //BUTTON 1b
            
                ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50)
                 ),
                  onPressed: (){
                    setState(() {
                      teamBpoints++;
                    });
                  },
                 child: Text(
                  'Add 1 point',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
                
                const SizedBox(
                  height: 12,
                ),
            
                 //BUTTON 2b
            
                  ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50)
                 ),
                  onPressed: (){
                    setState(() {
                      teamBpoints+=2;
                    });
                  },
                 child: Text(
                  'Add 2 points',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
                 const SizedBox(
                  height: 12,
                ),
            
                 //BUTTON 3b
            
                  ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50),
                  
                 ),
                  onPressed: (){
                    setState(() {
                      teamBpoints+=3;
                    });
                  },
                 child: Text(
                  'Add 3 points',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),
              ],
            ),
             ]
            ),
             // space between button and top ui
            SizedBox(
              height: 80,
            ),

            // RESET BUTTON
                 ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  minimumSize: Size(150, 50),
                  
                 ),
                  onPressed: (){
                    setState(() {
                      teamApoints=0;
                      teamBpoints=0;
                    });
                  },
                 child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                 ),
                 ),

                 Spacer(flex: 2,),
          ],

          

        ),
        
      ),
    );
  }
}


