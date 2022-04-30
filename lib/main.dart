import 'package:finance_demo/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,
        // colorScheme: Theme.of(context).colorScheme.copyWith(
        //   secondary:
        // ),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
