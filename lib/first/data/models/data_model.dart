import 'package:test_app/first/domain/entities/user_data.dart';

class UserDataModel extends UserData {
  final String mUsername;
  final String mName;
  final String mEmail;
  final String mPhone;
  final String mWebsite;
  final Map<String, dynamic> mCompany;
  final Map<String, dynamic> mAddress;

  const UserDataModel({
    required this.mUsername,
    required this.mName,
    required this.mEmail,
    required this.mPhone,
    required this.mWebsite,
    required this.mCompany,
    required this.mAddress,
  }) : super(
          username: mUsername,
          name: mName,
          email: mEmail,
          phone: mPhone,
          website: mWebsite,
          company: mCompany,
          address: mAddress,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        mUsername: json['username'],
        mName: json['name'],
        mEmail: json['email'],
        mPhone: json['phone'],
        mWebsite: json['website'],
        mCompany: json['company'],
        mAddress: json['address'],
      );
}
