import 'package:test_app/features/users_list/domain/entities/user_data.dart';
import 'package:test_app/features/users_list/domain/repositories/first_repository.dart';

class SendData {
  final FirstRepository repository;

  SendData({required this.repository});

  call(List<UserData> items) {
    return repository.sendData(items);
  }
}
