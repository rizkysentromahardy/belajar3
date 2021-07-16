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
          title: Text("belajar mengganti font"),
        ),
        body: Center(
          child: Text(
            'ini adalah text',
            style: TextStyle(
              fontFamily: 'SourceCode',
              fontStyle: FontStyle.italic,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
