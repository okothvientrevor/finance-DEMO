// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class CloseBtn extends StatelessWidget {
  const CloseBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
        // width: double.infinity / 2,
        child: ElevatedButton(
          onPressed: () {
            print("saved");
          },
          child: Text(
            "Close Database",
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ));
  }
}
