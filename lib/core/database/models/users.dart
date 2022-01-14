import 'package:moor_flutter/moor_flutter.dart';

class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get username => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get phone => text()();
  TextColumn get website => text()();
  TextColumn get city => text()();
  TextColumn get street => text()();
  TextColumn get suite => text()();
  TextColumn get companyName => text()();
  TextColumn get catchPhrase => text()();
  TextColumn get bs => text()();
}