import 'package:get_it/get_it.dart';

import 'core/database/app_database.dart';
import 'features/first/data/data_sources/first_local_data_source.dart';
import 'features/first/data/data_sources/first_remote_data_source.dart';
import 'features/first/data/repositories/first_repository.dart';
import 'features/first/domain/repositories/first_repository.dart';
import 'features/first/domain/usecases/get_data.dart';
import 'features/first/domain/usecases/send_data.dart';
import 'features/first/presentation/bloc/first_bloc.dart';

final appInstance = GetIt.instance;

Future<void> init() async {
  // Bloc
  appInstance.registerFactory(
    () => FirstBloc(
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
  appInstance.registerLazySingleton<FirstRepository>(
    () => FirstRepositoryImpl(
      remoteSource: appInstance(),
      localSource: appInstance(),
    ),
  );

  // Data Sources
  appInstance.registerLazySingleton<FirstRemoteDataSource>(
    () => FirstRemoteDataSourceImpl(),
  );
  appInstance.registerLazySingleton<FirstLocalDataSource>(
    () => FirstLocalDataSourceImpl(
      appDatabase: appInstance(),
    ),
  );

  appInstance.registerLazySingleton(() => AppDatabase(openConnection()));
}
