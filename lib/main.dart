import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Table Work"),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Table(
              border: TableBorder.all(),
              defaultColumnWidth: (FixedColumnWidth(53)),
              children: [
                firstLine(),
                secondLine("1", "Mustafa", 160),
                secondLine("2", "Noman", 110),
                secondLine("3", "Mujiz", 170),
                secondLine("4", "Zakir", 210),
                secondLine("5", "Shakir", 170),
                secondLine("5", "Shakir", 130),
                secondLine("5", "Shakir", 190),
                secondLine("5", "Shakir", 280),
                secondLine("5", "Shakir", 220),
                secondLine("5", "Shakir", 240),
                secondLine("5", "Shakir", 260),
                secondLine("1", "Mustafa", 160),
                secondLine("2", "Noman", 110),
                secondLine("3", "Mujiz", 170),
                secondLine("4", "Zakir", 210),
                secondLine("5", "Shakir", 170),
                secondLine("5", "Shakir", 130),
                secondLine("5", "Shakir", 190),
                secondLine("5", "Shakir", 280),
                secondLine("5", "Shakir", 220),
                secondLine("5", "Shakir", 240),
                secondLine("5", "Shakir", 260),
              ],
            ),
          )),
    );
  }

  TableRow firstLine() {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "S.NO",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "NAME",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "MARKS",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OBTAIN",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "PERCENTAGE",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "GRADE",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "PASS/FAIL",
          style: TextStyle(fontSize: 10),
        ),
      ),
    ]);
  }

  TableRow secondLine(
    String sno,
    String name,
    // int marks,
    int obt,
  ) {
    return TableRow(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          sno,
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(5),
        child: Text(
          name,
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "300",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          int.parse(obt.toString()).toString(),
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "${obt / 300 * 100}",
          style: TextStyle(fontSize: 10),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: obt / 300 * 100 >= 80
            ? Text(
                "A1",
                style: TextStyle(fontSize: 10),
              )
            : obt / 300 * 100 >= 70
                ? Text(
                    "A",
                    style: TextStyle(fontSize: 10),
                  )
                : obt / 300 * 100 >= 60
                    ? Text(
                        "B",
                        style: TextStyle(fontSize: 10),
                      )
                    : obt / 300 * 100 >= 50
                        ? Text(
                            "C",
                            style: TextStyle(fontSize: 10),
                          )
                        : Text(
                            "D",
                            style: TextStyle(fontSize: 10),
                          ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: obt / 300 * 100 >= 50
            ? Text(
                "Pass",
                style: TextStyle(fontSize: 10, color: Colors.green),
              )
            : Text(
                "Fail",
                style: TextStyle(fontSize: 10, color: Colors.red),
              ),
      ),
    ]);
  }
}
