import '../../core/utils/base_usecase.dart';
import '../entities/example_entity.dart';
import '../repositories/example_repository.dart';

class ExampleGetUserLocalUsecase
    implements BaseUsecase<List<ExampleEntity>, void> {
  const ExampleGetUserLocalUsecase(this._exampleRepository);

  final ExampleRepository _exampleRepository;

  @override
  Future<List<ExampleEntity>> call(void parameter) {
    return _exampleRepository.getAllUserFromLocal();
  }
}
                