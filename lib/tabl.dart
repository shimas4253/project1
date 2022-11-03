import 'package:flutter/material.dart';

class tables extends StatelessWidget {
  const tables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DataTable(
          border: TableBorder(right: BorderSide.none,
          left: BorderSide.none,
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)
          ),
          columns: <DataColumn>[
            DataColumn(
                label: Text(
              'Name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
              'Age',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            DataColumn(
                label: Text(
                  'Place',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            DataColumn(
                label: Text(
                  'job',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
          ],
          rows: <DataRow>[
            DataRow(cells: <DataCell>[
              DataCell(Text('shimas')),
              DataCell(Text('21')),
              DataCell(Text('edavanna')),
              DataCell(Text('developer'))
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('satar')),
              DataCell(Text('23')),
              DataCell(Text('manjeri')),
              DataCell(Text('hacker'))
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('adhil')),
              DataCell(Text('22')),
              DataCell(Text('kavanoor')),
              DataCell(Text('sap'))
            ]),
            DataRow(cells: <DataCell>[
              DataCell(Text('safvan')),
              DataCell(Text('23')),
              DataCell(Text('edavanna')),
              DataCell(Text('enterpurner'))
            ])
          ],
        ),
      ),
    );
  }
}
