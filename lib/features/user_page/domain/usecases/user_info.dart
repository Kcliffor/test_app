import 'package:equatable/equatable.dart';
import 'package:test_app/features/user_page/domain/repositories/user_page_repository.dart';
import 'package:test_app/features/users_list/domain/entities/user_data.dart';

class UserInfoCase {
  final UserPageRepository repository;

  UserInfoCase({required this.repository});

  Future<UserData> call(IdParams idParams) async {
    return await repository.getInfoById(idParams.id);
  }
}

class IdParams extends Equatable {
  final int id;

  const IdParams({required this.id});

  @override
  List<Object?> get props => [id];

}