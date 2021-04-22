import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'core/constants/api_constant.dart';
import 'core/constants/db_constant.dart';
import 'core/services/local/app_database.dart';
import 'core/services/remote/app_remote.dart';
import 'core/services/remote/dio_client.dart';
import 'features/example/data/repositories/example_repository_implement.dart';
import 'features/example/domain/repositories/example_repository.dart';
import 'features/example/domain/usecases/example_get_user_local_usecase.dart';
import 'features/example/domain/usecases/example_get_user_remote_usecase.dart';
import 'features/example/domain/usecases/example_save_user_usecase.dart';
import 'features/example/presentation/bloc/local/example_local_bloc.dart';
import 'features/example/presentation/bloc/remote/example_bloc.dart';

final injector = GetIt.instance;

Future<void> initDI() async {
  // Logger
  injector.registerLazySingleton(() => Logger());

  //Local
  final database = await $FloorAppDataBase.databaseBuilder(DB_NAME).build();
  injector.registerLazySingleton(() => database);

  //Remote
  injector.registerLazySingleton(() => AppRemote(injector()));
  injector.registerLazySingleton(() => injector<DioClient>().dio);
  injector.registerLazySingleton(() => DioClient(APIConstant.BASE_URL));

  //Repository
  injector.registerLazySingleton<ExampleRepository>(
      () => ExampleRepositoryImplement(injector(), injector()));

  // Usecase
  injector.registerLazySingleton(() => ExampleGetUserRemoteUsecase(injector()));
  injector.registerLazySingleton(() => ExampleGetUserLocalUsecase(injector()));
  injector.registerLazySingleton(() => ExampleSaveUseCase(injector()));

  //Bloc
  injector.registerLazySingleton(() => ExampleBloc(injector(), injector()));
  injector.registerLazySingleton(() => ExampleLocalBloc(injector()));
}
