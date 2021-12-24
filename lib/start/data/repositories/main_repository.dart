import 'package:test_app/start/data/data_sources/main_remote_data_source.dart';
import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/domain/repositories/main_repository.dart';

class MainRepositoryImpl implements MainRepository {
  final MainRemoteDataSource remoteSource;

  MainRepositoryImpl({required this.remoteSource});

  @override
  List<Data> getData()  {
    return remoteSource.getData();
  }
  
}