import 'package:test_app/features/users_list/domain/entities/user_data.dart';
import 'package:test_app/features/users_list/domain/repositories/first_repository.dart';

class GetData {
  final FirstRepository repository;

  GetData({required this.repository});

  Future<List<UserData>> call() async {
    return await repository.getData();
  }
}
