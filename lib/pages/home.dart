// ignore_for_file: prefer_const_constructors, avoid_print, sized_box_for_whitespace
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:finance_demo/pages/input_data.dart';
import 'package:finance_demo/widgets/build_closebtn.dart';
// import 'package:finance_demo/widgets/build_savebtn.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
        appBar: AppBar(
          title: Text("Bank Transaction"),
          actions: [Icon(Icons.menu)],
        ),
        body: Column(
          children: [
            Container(
              height: 400,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20),
                  children: [
                    CustGridTile(
                      label: "Register User",
                      icon: Icons.person_add,
                      page: InputData(),
                    ),
                    CustGridTile(
                      label: "View Data",
                      icon: Icons.description,
                      page: InputData(),
                    ),
                    CustGridTile(
                      label: "Sync Data",
                      icon: Icons.sync,
                      page: InputData(),
                    ),
                    CustGridTile(
                      label: "Center ID",
                      icon: Icons.badge,
                      page: InputData(),
                    ),
                    // Container(
                    //   height: 80,
                    //   decoration: BoxDecoration(
                    //     boxShadow: [
                    //       BoxShadow(
                    //           color: Colors.grey, offset: Offset(5.0, 5.0)),
                    //     ],
                    //     borderRadius: BorderRadius.circular(20),
                    //     color: Colors.white,
                    //   ),
                    //   child: Column(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Icon(
                    //         Icons.badge,
                    //         size: 50,
                    //         color: Theme.of(context).primaryColor,
                    //       ),
                    //       // Text(
                    //       //   "Enter Data",
                    //       //   style: TextStyle(fontSize: 30),
                    //       // ),
                    //       Text("Center ID",
                    //           style: Theme.of(context).textTheme.subtitle1),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            CloseBtn()
          ],
        ));
  }
}

class CustGridTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final Widget page;
  const CustGridTile(
      {Key? key, required this.label, required this.icon, required this.page})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: Theme.of(context).primaryColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(label, style: Theme.of(context).textTheme.subtitle1),
          ],
        ),
      ),
    );
  }
}
