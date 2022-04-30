// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class BuildAccountNo extends StatelessWidget {
  const BuildAccountNo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Account No:",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 5.0),
              ),
              contentPadding: EdgeInsets.only(top: 14),
              // prefixIcon: Icon(Icons.email),
              hintText: "Enter Account Number",
              hintStyle: TextStyle(color: Colors.black38)),
        ),
      ],
    );
  }
}
