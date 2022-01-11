import 'package:test_app/first/data/data_sources/first_remote_data_source.dart';
import 'package:test_app/first/domain/entities/user_data.dart';
import 'package:test_app/first/domain/repositories/first_repository.dart';

class FirstRepositoryImpl implements FirstRepository {
  final FirstRemoteDataSource remoteSource;

  FirstRepositoryImpl({required this.remoteSource});

  @override
  Future<List<UserData>> getData() async {
    return await remoteSource.getData();
  }

  @override
  sendData(List<UserData> items) {
    return remoteSource.sendData(items);
  }
}
