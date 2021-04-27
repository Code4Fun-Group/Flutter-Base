import '../../core/utils/remote_data.dart';
import '../../core/utils/base_usecase.dart';
import '../entities/example_entity.dart';
import '../repositories/example_repository.dart';

class ExampleGetUserRemoteUsecase
    implements BaseUsecase<RemoteData<ExampleEntity>, String> {
  const ExampleGetUserRemoteUsecase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<RemoteData<ExampleEntity>> call(String parameter) {
    return _exampleRepository.getUserFromRemote(parameter);
  }
}

// Only pass username, so don't need this object
class ExampleParameter {
  const ExampleParameter({this.userName});

  final String? userName;
}
