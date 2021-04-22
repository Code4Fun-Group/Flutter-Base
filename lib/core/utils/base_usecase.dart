abstract class BaseUsecase<T, P> {
  Future<T> call(P parameter);
}
