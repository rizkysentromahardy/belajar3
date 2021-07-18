import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;
  // _MyAppState() {
  //   for (int i = 0; i < 15; i++)
  //     widgets.add(Text(
  //       "Data ke " + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('belajar list view'),
        ),
        body: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.add(Text('tambah data ' + counter.toString()));
                      counter++;
                    });
                  },
                  child: Text("tambah data")),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                      counter--;
                    });
                  },
                  child: Text("kurang data")),
            ],
          ),
          Column(children: widgets)
        ]),
      ),
    );
  }
}
