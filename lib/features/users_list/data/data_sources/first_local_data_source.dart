import 'package:moor_flutter/moor_flutter.dart';
import 'package:test_app/core/database/app_database.dart';
import 'package:test_app/core/database/data_models/user_db_model.dart';
import 'package:test_app/features/users_list/data/models/data_model.dart';

abstract class FirstLocalDataSource {
  Future<void> saveUsers(UserDataModel userDataModel);
  Future<bool> hasUserData();
  Future<List<UserDBModel>> getUserData();
}

class FirstLocalDataSourceImpl implements FirstLocalDataSource {
  final AppDatabase appDatabase;

  FirstLocalDataSourceImpl({required this.appDatabase});

  @override
  Future<void> saveUsers(UserDataModel userDataModel) async {
    return await appDatabase.insertUsers(
      UsersCompanion(
        username: Value(userDataModel.mUsername),
        name: Value(userDataModel.mName),
        email: Value(userDataModel.mEmail),
        phone: Value(userDataModel.mPhone),
        website: Value(userDataModel.mWebsite),
        city: Value(userDataModel.mAddress['city']),
        street: Value(userDataModel.mAddress['street']),
        suite: Value(userDataModel.mAddress['suite']),
        companyName: Value(userDataModel.mCompany['name']),
        catchPhrase: Value(userDataModel.mCompany['catchPhrase']),
        bs: Value(userDataModel.mCompany['bs']),
      ),
    );
  }

  @override
  Future<bool> hasUserData() async {
    List<User> users = await appDatabase.checkDBUsers();
    return users.isNotEmpty;
  }

  @override
  Future<List<UserDBModel>> getUserData() async {
    return await appDatabase.getUsers();
  }
}
