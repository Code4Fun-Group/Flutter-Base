

import '../../core/utils/remote_data.dart';
import '../../domain/entities/example_entity.dart';
import '../../domain/repositories/example_repository.dart';
import '../datasources/local/app_database.dart';
import '../datasources/remote/app_remote.dart';
import '../model/example_model.dart';

class ExampleRepositoryImplement implements ExampleRepository {
  const ExampleRepositoryImplement(this._appRemote, this._appDataBase);

  final AppRemote _appRemote;
  final AppDataBase _appDataBase;

  @override
  Future<RemoteData<ExampleModel>> getUserFromRemote(String userName) {
    return  _appRemote.getUser(userName);
  }

  @override
  Future<List<ExampleEntity>> getAllUserFromLocal() {
    return _appDataBase.exampleDao.getAllUser();
  }

  @override
  Future<void> saveUser(ExampleEntity user) {
    return _appDataBase.exampleDao.insertUser(user);
  }
}
