import '../../core/utils/base_usecase.dart';
import '../entities/example_entity.dart';
import '../repositories/example_repository.dart';

class ExampleSaveUseCase implements BaseUsecase<void, ExampleEntity> {
  const ExampleSaveUseCase(this._exampleRepository);

  final ExampleRepository _exampleRepository;
  
  @override
  Future<void> call(ExampleEntity parameter) {
    return _exampleRepository.saveUser(parameter);
  }
}
