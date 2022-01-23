import 'package:test_app/features/user_page/data/data_sources/user_page_local_source.dart';
import 'package:test_app/features/user_page/domain/repositories/user_page_repository.dart';
import 'package:test_app/features/users_list/domain/entities/user_data.dart';

class UserPageRepositoryImpl implements UserPageRepository {
  final UserPageLocalSource localSource;

  UserPageRepositoryImpl({required this.localSource});

  @override
  Future<UserData> getInfoById(int id) async {
    var user = await localSource.getInfoById(id);
    return UserData(
      username: user!.username,
      name: user.name,
      email: user.email,
      phone: user.phone,
      website: user.website,
      company: {
        'name': user.companyName,
        'catchPhrase': user.catchPhrase,
        'bs': user.bs,
      },
      address: {
        'city': user.city,
        'street': user.street,
        'suite': user.suite,
      },
    );
  }
}
