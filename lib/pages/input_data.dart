// ignore_for_file: prefer_const_constructors

import 'package:currency_picker/currency_picker.dart' as currencyPicker;
import 'package:date_time_picker/date_time_picker.dart';
import 'package:finance_demo/widgets/build_accname.dart';
import 'package:finance_demo/widgets/build_accountno.dart';
import 'package:finance_demo/widgets/build_depositamt.dart';
import 'package:finance_demo/widgets/build_savebtn.dart';
import 'package:finance_demo/widgets/idno.dart';
import 'package:finance_demo/widgets/withdrawamt.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class InputData extends StatefulWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  State<InputData> createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  final TextEditingController accNoCtrl = TextEditingController();
  List<String> sexList = ["M", "F"];
  String selectedSex = "M";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Enter User Data"),
        ),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildAccountNo(),
                SizedBox(height: 20),
                BuildAccName(),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      currencyPicker.showCurrencyPicker(
                        context: context,
                        showFlag: true,
                        showCurrencyName: true,
                        showCurrencyCode: true,
                        onSelect: (currencyPicker.Currency currency) {
                          print('Select currency: ${currency.name}');
                        },
                      );
                    },
                    child: Text("Choose Currency")),
                SizedBox(height: 20),
                DepoAmt(),
                SizedBox(height: 20),
                WithdrawAmt(),
                SizedBox(height: 20),
                IdNo(),
                SizedBox(height: 20),
                DateTimePicker(
                  type: DateTimePickerType.date,
                  dateMask: 'd MMM, yyyy',
                  initialValue: DateTime.now().toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  dateLabelText: 'Date',
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Sex:",
                    ),
                    SizedBox(width: 10),
                    DropdownButton<String>(
                      value: selectedSex,
                      items: [
                        DropdownMenuItem(
                          child: Text("Male"),
                          value: sexList[0],
                        ),
                        DropdownMenuItem(
                          child: Text("Female"),
                          value: sexList[1],
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedSex = value ?? sexList[0];
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                IntlPhoneField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                  initialCountryCode: 'UG',
                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SaveBtn()
              ],
            ),
          ),
        ));
  }
}

class Currency extends StatelessWidget {
  const Currency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
