import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("Example 1"),),
            body : Container
              (
                padding: EdgeInsets.all(10),
                child: Column(spacing: 10,
                  children: [
                    Container(
                      decoration:BoxDecoration(
                    color: Colors.lightBlueAccent,
                    border: Border.all(width: 2,color: Colors.black87),
                ),
                      padding: EdgeInsets.all(10),
                      width: 1000,
                      child: Text("Nader Magdy Mostafa",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24, color: Colors.grey[500]),textAlign: TextAlign.center,),
                    ),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 2,color: Colors.black87),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      width: 1000,
                      child: Text("This is my first App to learn how can i use the widgets In correct way i hope allah help me to finish that and find good work for my self"
                        ,style: TextStyle(fontSize: 20, color: Colors.grey[500]),textAlign: TextAlign.center,),
                    ),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 2,color: Colors.black87),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      width: 1000,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                              Icon(Icons.star),
                            ],

                          ),
                          Text("170 reviews", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),

                        ],
                      ),
                    ),
                    Container(
                      decoration:BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(width: 2,color: Colors.black87),
                      ),
                      padding: EdgeInsets.all(10),
                      width: 1000,
                      child: Column(

                        children: [
                        Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.access_alarm,color: Colors.green[500],),
                          Icon(Icons.local_fire_department,color: Colors.green[500],),
                          Icon(Icons.fastfood_rounded,color: Colors.green[500]),

                        ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("PREP:", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                              Text("COOK:", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                              Text("FEED:", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("25m", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                              Text("1h", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                              Text("4-6", style: TextStyle(fontWeight:FontWeight.bold,fontSize: 14),),
                            ],
                          )
                        ],
                      ),
                    )
                  ],

                )


            )


        ),
    );

  }}
