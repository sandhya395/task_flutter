import 'package:flutter/material.dart';

class FlutterTableScreen extends StatelessWidget {
  FlutterTableScreen({Key? key}) : super(key: key);

  bool valuefirst =  true;
  bool valuesecond = true;
  bool valuethird = true;
  bool valueforth = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Center(
          //   child: SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Table(
          //       border: TableBorder.all(color: Colors.black),
          //       defaultColumnWidth: const FixedColumnWidth(120.0),
          //       children: const [
          //         TableRow(children: [
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //         ]),
          //         TableRow(children: [
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //         ]),
          //         TableRow(children: [
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //           TableCell(child: Center(child: Text("1"))),
          //         ]),
          //       ],
          //     ),
          //   ),
          // ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: DataTable(
                  border: TableBorder.symmetric(outside:BorderSide(style:BorderStyle.solid ) ),
                  columns: [
                    DataColumn(
                        label: Checkbox(value:false, onChanged: (bool? value) {

                        },)),
                    DataColumn(
                        label: Text('Dessert',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),

                    //   label: CheckboxListTile(
                    //     checkColor: Colors.greenAccent,
                    //     activeColor: Colors.red,
                    //     secondary: Icon(Icons.arrow_forward),
                    //     title: Text(
                    //       "Wake up at the same time every morning.",
                    //       style:
                    //           TextStyle(decoration: TextDecoration.underline),
                    //     ),
                    //     tristate: true,
                    //     value: this.valuefirst,
                    //     onChanged: (bool? value) {
                    //       setState(
                    //         () {
                    //           value = valuefirst;
                    //         },
                    //       );
                    //     },
                    //
                    //     // onChanged: (bool? value) {
                    //     //   setState(() {
                    //     //     this.valuefirst = value!;
                    //     //   });
                    //     // },
                    //   ),
                    //   // Text('ID',
                    //   //     style: TextStyle(
                    //   //         fontSize: 18, fontWeight: FontWeight.bold))),
                    //   // Checkbox(value: true, onChanged: )
                    // ),
                    DataColumn(
                        label: Text('Calories',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Fat',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Carbs',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                    DataColumn(
                        label: Text('Protein(g)',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold))),
                  ],

                  rows:  [
                    DataRow(cells: [
                      DataCell(Checkbox(value:  this.valuefirst, onChanged: (bool? value) {

                      },)),
                      DataCell(Text("Frozen yogurt")),
                      DataCell(Text("159")),
                      DataCell(Text("6")),
                      DataCell(Text("20")),
                      DataCell(Text("4")),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(value: true, onChanged: (value) {

                      },)),
                      DataCell(Text("Ice cream sandwich")),
                      DataCell(Text("237")),
                      DataCell(Text("9")),
                      DataCell(Text("47")),
                      DataCell(Text("4.3")),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(value: true, onChanged: (value) {

                      },)),
                      DataCell(Text("Eelair")),
                      DataCell(Text("262")),
                      DataCell(Text("16")),
                      DataCell(Text("34")),
                      DataCell(Text("6")),
                    ]),
                    DataRow(cells: [
                      DataCell(Checkbox(value: true, onChanged: (value) {

                      },)),
                      DataCell(Text("Ice cream sundae")),
                      DataCell(Text("450")),
                      DataCell(Text("19")),
                      DataCell(Text("72")),
                      DataCell(Text("8.4")),
                    ]),
                  ]),
            ),
          )
        ],
      ),
    );
  }


}
