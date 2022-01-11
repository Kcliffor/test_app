import 'package:get_it/get_it.dart';

import 'first/data/data_sources/first_remote_data_source.dart';
import 'first/data/repositories/first_repository.dart';
import 'first/domain/repositories/first_repository.dart';
import 'first/domain/usecases/get_data.dart';
import 'first/domain/usecases/send_data.dart';
import 'first/presentation/bloc/first_bloc.dart';

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
    ),
  );
  // Data Sources
  appInstance.registerLazySingleton<FirstRemoteDataSource>(
    () => FirstRemoteDataSourceImpl(),
  );
}
