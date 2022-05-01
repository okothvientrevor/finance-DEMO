// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PersonDetailsAdapter extends TypeAdapter<PersonDetails> {
  @override
  final int typeId = 1;

  @override
  PersonDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PersonDetails(
      acc_no: fields[0] as String,
      acc_name: fields[1] as int,
      currency: fields[2] as String,
      deposit_amt: fields[3] as int,
      withdraw_amt: fields[4] as int,
      id_no: fields[5] as String,
      date: fields[6] as String,
      sex: fields[8] as String,
      phone_no: fields[9] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PersonDetails obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.acc_no)
      ..writeByte(1)
      ..write(obj.acc_name)
      ..writeByte(2)
      ..write(obj.currency)
      ..writeByte(3)
      ..write(obj.deposit_amt)
      ..writeByte(4)
      ..write(obj.withdraw_amt)
      ..writeByte(5)
      ..write(obj.id_no)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(8)
      ..write(obj.sex)
      ..writeByte(9)
      ..write(obj.phone_no);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PersonDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
