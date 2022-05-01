import 'package:finance_demo/pages/home.dart';
import 'package:finance_demo/person_details.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

late Box box;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Box box = await Hive.openBox('box');
  Hive.registerAdapter(PersonDetailsAdapter());

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
