import 'package:test_app/features/users_list/domain/entities/user_data.dart';

abstract class FirstRepository {
  Future<List<UserData>> getData();
  sendData(List<UserData> items);
}
