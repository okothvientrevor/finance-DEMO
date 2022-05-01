// ignore_for_file: non_constant_identifier_names

import 'package:hive/hive.dart';

part 'person_details.g.dart';

@HiveType(typeId: 1)
class PersonDetails extends HiveObject {
  PersonDetails(
      {required this.acc_no,
      required this.acc_name,
      required this.currency,
      required this.deposit_amt,
      required this.withdraw_amt,
      required this.id_no,
      required this.date,
      required this.sex,
      required this.phone_no});
  @HiveField(0)
  String acc_no;

  @HiveField(1)
  int acc_name;

  @HiveField(2)
  String currency;

  @HiveField(3)
  int deposit_amt;

  @HiveField(4)
  int withdraw_amt;

  @HiveField(5)
  String id_no;

  @HiveField(6)
  String date;

  // @HiveField(7)
  // String date;

  @HiveField(8)
  String sex;

  @HiveField(9)
  String phone_no;
}
