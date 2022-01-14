import 'package:test_app/features/first/data/data_sources/first_local_data_source.dart';
import 'package:test_app/features/first/data/data_sources/first_remote_data_source.dart';
import 'package:test_app/features/first/domain/entities/user_data.dart';
import 'package:test_app/features/first/domain/repositories/first_repository.dart';

class FirstRepositoryImpl implements FirstRepository {
  final FirstRemoteDataSource remoteSource;
  final FirstLocalDataSource localSource;

  FirstRepositoryImpl({
    required this.localSource,
    required this.remoteSource,
  });

  @override
  Future<List<UserData>> getData() async {
    if (!(await localSource.hasUserData())) {
      var usersData = await remoteSource.getData();
      for (var user in usersData) {
        await localSource.saveUsers(user);
      }
      return usersData;
    } else {
      var users = (await localSource.getUserData())
          .map((user) => UserData(
                username: user.username,
                website: user.website,
                name: user.name,
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
                phone: user.phone,
                email: user.email,
              ))
          .toList();
      return users;
    }
  }

  @override
  sendData(List<UserData> items) {
    return remoteSource.sendData(items);
  }
}
