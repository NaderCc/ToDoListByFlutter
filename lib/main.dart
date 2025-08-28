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
                    )
                  ],

                )


            )


        ),
    );

  }}

          /*
          Container(

            child:GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing:10.0,
                crossAxisSpacing: 5.0,
                mainAxisExtent: 100,
              ),

                
                itemCount: Clerks.length,
                itemBuilder : (context , i)
                {
                  return Container
                    (
                      height: 100 ,
                      color: Colors.blue,
                    child: Text("|---${Clerks[i]['name']} -- ${Clerks[i]['age']}--| ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Colors.black87),
                    ),
                  );
                },
            ),


          ),*/



        /*ListView(
        children: [
        Container(
          decoration:BoxDecoration
            (
              color: Colors.blueGrey,
              borderRadius: BorderRadius.all(Radius.circular(4000)),
              border: Border.all(color: Colors.blueAccent , width: 10),
              boxShadow: [
                BoxShadow(color : Colors.lightBlueAccent , offset: Offset(10,10) , spreadRadius: 2 , blurRadius: 10),
                BoxShadow(color: Colors.greenAccent , offset: Offset(-10, -10) , spreadRadius : 2, blurRadius: 10),
              ]
          ),
          width: 1000 ,
          height: 800,

          alignment: Alignment.center,
          margin: EdgeInsets.all(50),
          child :Column(
              mainAxisSize: MainAxisSize.min,

            children: [
              Container(
                    width: 200,
                    height: 200,
                  decoration:BoxDecoration(
                    color : Colors.lightGreen,
                    borderRadius: BorderRadius.all(Radius.circular(4000)),
                    border: Border.all(color: Colors.greenAccent, width: 10),
                    boxShadow: [
                      BoxShadow(color : Colors.lightBlueAccent , offset: Offset(3,3) , spreadRadius: 2 , blurRadius: 10),
                      BoxShadow(color: Colors.greenAccent , offset: Offset(-3, -3) , spreadRadius : 2, blurRadius: 10),
                              ],
                  ),
                  child : ClipOval(
                    child: Image.asset("image/file.jpg", fit: BoxFit.cover, width: 200, height: 200),
                  ),


              ),
              Container(
                decoration:BoxDecoration(
                  color : Colors.lightGreen,
                  borderRadius: BorderRadius.all(Radius.circular(4000)),
                  border: Border.all(color: Colors.blueAccent , width: 10),
                  boxShadow: [
                    BoxShadow(color : Colors.lightBlueAccent , offset: Offset(3,3) , spreadRadius: 2 , blurRadius: 10),
                    BoxShadow(color: Colors.greenAccent , offset: Offset(-3, -3) , spreadRadius : 2, blurRadius: 10),
                  ],
                ),
              child :ClipOval(

                child: Image.network("https://nature-image.weebly.com/uploads/1/4/2/6/142697203/61778755bf026319451e4357b450c54e_orig.jpg",
                  width: 500, height: 300,fit : BoxFit.cover,),

              ),
              ),


              //Image.asset("image/file.jpg",width: 150,height: 150,)
            ],
            ),


            ),
        Container(
          decoration:BoxDecoration
            (
              color: Colors.white60,
              borderRadius: BorderRadius.all(Radius.circular(8000)),
              border: Border.all(color: Colors.green , width: 10),
              boxShadow: [
                BoxShadow(color : Colors.lightGreenAccent , offset: Offset(6,6) , spreadRadius: 2 , blurRadius: 10),
                BoxShadow(color: Colors.greenAccent , offset: Offset(-6, -6) , spreadRadius : 2, blurRadius: 10),
              ]
          ),
          width: 400 ,
          height: 400,
          child: SingleChildScrollView(
            child: Column(
            children: [
              Image.network("https://i.pinimg.com/originals/2d/57/24/2d5724d12ec9a62a2d8f9b25d1eae276.jpg",width: 250,height: 250,fit: BoxFit.fitWidth),
              Image.network("https://i.pinimg.com/736x/e9/8d/98/e98d9898b9af07ba417438d2aaeae1b5.jpg",width: 300,height: 320,fit: BoxFit.fitWidth,)
              ],
            ),
          ),

        ),
      ],
    ),
      ),*/


