import 'package:get_it/get_it.dart';
import 'package:test_app/start/data/data_sources/main_remote_data_source.dart';
import 'package:test_app/start/data/repositories/main_repository.dart';
import 'package:test_app/start/domain/repositories/main_repository.dart';
import 'package:test_app/start/domain/usecases/get_data.dart';
import 'package:test_app/start/domain/usecases/send_data.dart';
import 'package:test_app/start/presentation/bloc/main_bloc.dart';

final appInstance = GetIt.instance;

Future<void> init() async {
  // Bloc
  appInstance.registerFactory(
    () => MainBloc(
      getData: appInstance(),
      sendData: appInstance(),
    ),
  );

  // Use cases
  appInstance.registerLazySingleton(
    () => GetData(
      repository: appInstance(),
    ),
  );

  appInstance.registerLazySingleton(
    () => SendData(
      repository: appInstance(),
    ),
  );

  // Repositories
  appInstance.registerLazySingleton<MainRepository>(
    () => MainRepositoryImpl(
      remoteSource: appInstance(),
    ),
  );
  // Data Sources
  appInstance.registerLazySingleton<MainRemoteDataSource>(
    () => MainRemoteDataSourceImpl(),
  );
}
