import 'package:flutter/material.dart';

import 'package:flutter_dart_internals_todo_app/keys/keys.dart';
//import 'package:flutter_dart_internals_todo_app/ui_updates_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Internals'),
        ),
        body: const Keys()//UIUpdatesDemo(),
      )
    );
  }
}



