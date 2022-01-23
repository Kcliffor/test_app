import 'package:test_app/features/users_list/domain/entities/user_data.dart';

abstract class UserPageRepository {
  Future<UserData> getInfoById(int id);
}
