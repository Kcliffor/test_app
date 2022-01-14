import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_app/core/database/app_database.dart';

class UserDBModel {
  final int? id;
  final String username;
  final String name;
  final String email;
  final String phone;
  final String website;
  final String city;
  final String street;
  final String suite;
  final String companyName;
  final String catchPhrase;
  final String bs;

  UserDBModel({
    this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.name,
    required this.website,
    required this.city,
    required this.street,
    required this.suite,
    required this.companyName,
    required this.catchPhrase,
    required this.bs,
  });

  factory UserDBModel.fromModel(User user) => UserDBModel(
        id: user.id,
        username: user.username,
        email: user.email,
        phone: user.phone,
        name: user.name,
        website: user.website,
        city: user.city,
        street: user.street,
        suite: user.suite,
        companyName: user.companyName,
        catchPhrase: user.catchPhrase,
        bs: user.bs,
      );

  UsersCompanion toModel() {
    return UsersCompanion(
      id: id != null ? Value(id!) : const Value.absent(),
      username: Value(username),
      email: Value(email),
      phone: Value(phone),
      name: Value(name),
      website: Value(website),
      city: Value(city),
      street: Value(street),
      suite: Value(suite),
      companyName: Value(companyName),
      catchPhrase: Value(catchPhrase),
      bs: Value(bs),
    );
  }
}
