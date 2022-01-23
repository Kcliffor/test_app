import 'package:test_app/core/database/app_database.dart';
import 'package:test_app/core/database/data_models/user_db_model.dart';

abstract class UserPageLocalSource {
  Future<UserDBModel?> getInfoById(int id);
}

class UserPageLocalSourceImpl implements UserPageLocalSource {
  final AppDatabase appDatabase;

  UserPageLocalSourceImpl({required this.appDatabase});

  @override
  Future<UserDBModel?> getInfoById(int id) async {
    return await appDatabase.getUserById(id);
  }
}
