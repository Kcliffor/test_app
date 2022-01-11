import 'package:test_app/first/domain/entities/user_data.dart';

abstract class FirstRepository {
  Future<List<UserData>> getData();
  sendData(List<UserData> items);
}
