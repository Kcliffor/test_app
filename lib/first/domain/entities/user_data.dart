import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  final String username;
  final String name;
  final String email;
  final String phone;
  final String website;
  final Map<String, dynamic> company;
  final Map<String, dynamic> address;

  const UserData({
    required this.username,
    required this.name,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  });

  @override
  List<Object?> get props => [
        username,
        name,
        email,
        phone,
        website,
        company,
        address,
      ];
}
