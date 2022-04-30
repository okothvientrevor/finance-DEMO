// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class SaveBtn extends StatelessWidget {
  const SaveBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            print("saved");
          },
          child: Text(
            "Save",
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ));
  }
}
