import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  bool addMission = false;
  bool? isDone=false;
  bool? isDone2=false;
  bool? isDone3=false;
  bool? isDone4=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("ToDoList"),),

        body :


        ListView(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.indigoAccent,
              ),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal
                  ,child: DataTable(

                columns: const [
                  DataColumn(label: Text("Id")),
                  DataColumn(label: Text("Name")),
                  DataColumn(label: Text("Description")),
                  DataColumn(label: Text("Status")),
                ],

                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("1")),
                      DataCell(Text("AddWatermelon")),
                      DataCell(Text("DrinkIt")),
                      DataCell(Checkbox(value:isDone2 , onChanged: (val)
                      {
                        setState(() {
                          isDone2=val;
                        });
                      })),
                    ],
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("2")),
                      DataCell(Text("Orange")),
                      DataCell(Text("Eat It")),
                      DataCell(Checkbox(value:isDone3 , onChanged: (val)
                      {
                       setState(() {
                         isDone3=val;
                       });

                      })),
                    ],
                  ),
                ],
              )
              ),
            ),
            SwitchListTile(value: addMission, onChanged: (val)
            {
              setState(() {
                addMission=val;

              });

            },title: Text("To add Another mission switch On",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),),
            if(addMission)
                Container(
                  padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),

                decoration:BoxDecoration(
                    border: Border.all(color: Colors.cyan,width: 2,),
                    color: Colors.tealAccent,
                  ),
                 // color: Colors.tealAccent,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child:TextFormField(
                            decoration: InputDecoration(

                              border: OutlineInputBorder() ,
                              fillColor: Colors.white,
                              filled: true,
                              hintText: "  Enter the name of the mission",
                              labelText: "MissionName",
                              labelStyle: TextStyle(fontSize: 25,),
                              prefix: Icon(Icons.task),
                          ),
                        ),),
                      Container(
                        margin: EdgeInsets.all(10),
                        child:TextFormField(
                          decoration: InputDecoration(

                            border: OutlineInputBorder() ,
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "  Enter the Description of the mission",
                            labelText: "MissionDescription",
                            labelStyle: TextStyle(fontSize: 25,),
                            prefix: Icon(Icons.task),
                          ),
                        )),
                      Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white, // الخلفية بيضاء
                          border: Border.all(
                          color: Colors.black, // الحدود سوداء
                          width: 2,            // سمك الحدود
                      )),
                        child: CheckboxListTile(value: isDone, onChanged: (val)
                        {
                          setState(() {
                            isDone=val;
                          });
                        },title: Text("Status of ur mission",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
                      ),

                  ],
              ),),
              Container(
                margin: EdgeInsets.all(10),
                width: 20,
                height: 50,
                decoration:BoxDecoration(

                  border: Border.all(color: Colors.indigoAccent,width: 2,),
                  color: Colors.black,
                ),
              child:MaterialButton(onPressed: ()
              {

              },
                minWidth: 50,
              child:Text("AddMission",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white)),
              ),)




          ],
        ),
      ),
    );
  }
}




/*
class MyApp extends StatelessWidget {
bool addMission = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: const Text("Example 1"),),

            body :


            ListView(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                 padding: EdgeInsets.all(20),
                 margin: EdgeInsets.all(20),
                 width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                  ),
                   child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal
                   ,child: DataTable(

                      columns: const [
                        DataColumn(label: Text("Id")),
                        DataColumn(label: Text("Name")),
                        DataColumn(label: Text("Description")),
                        DataColumn(label: Text("Status")),
                      ],

                     rows: const [
                       DataRow(
                         cells: [
                           DataCell(Text("1")),
                           DataCell(Text("AddWatermelon")),
                           DataCell(Text("DrinkIt")),
                           DataCell(Text("Pending")),
                         ],
                       ),
                       DataRow(
                         cells: [
                           DataCell(Text("2")),
                           DataCell(Text("Orange")),
                           DataCell(Text("Eat It")),
                           DataCell(Text("Done")),
                         ],
                       ),
                     ],
                    )
                   ),
                ),
                SwitchListTile(value: addMission, onChanged: (val)
                {

                  addMission=val;
                },title: Text("To add Another mission switch On"),),
              ],
            ),
         ),
    );
  }}
*/