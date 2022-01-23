import 'package:get_it/get_it.dart';

import 'core/database/app_database.dart';
import 'features/users_list/data/data_sources/first_local_data_source.dart';
import 'features/users_list/data/data_sources/first_remote_data_source.dart';
import 'features/users_list/data/repositories/first_repository.dart';
import 'features/users_list/domain/repositories/first_repository.dart';
import 'features/users_list/domain/usecases/get_data.dart';
import 'features/users_list/domain/usecases/send_data.dart';
import 'features/users_list/presentation/bloc/users_list_bloc.dart';

final appInstance = GetIt.instance;

Future<void> init() async {
  // Bloc
  appInstance.registerFactory(
    () => UsersListBloc(
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
