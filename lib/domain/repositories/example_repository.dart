import '../../core/utils/remote_data.dart';
import '../../data/model/example_model.dart';
import '../entities/example_entity.dart';

abstract class ExampleRepository {
  //For remote
  Future<RemoteData<ExampleModel>> getUserFromRemote(String userName);
  
  //For local
  Future<List<ExampleEntity>> getAllUserFromLocal();

  Future<void> saveUser(ExampleEntity user);
}
