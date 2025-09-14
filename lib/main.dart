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
              setState(() {
                addMission=val;

              });

            },title: Text("To add Another mission switch On"),),
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
                        child: CheckboxListTile(value: value, onChanged: onChanged),
                      ),

                  ],
              ),),





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