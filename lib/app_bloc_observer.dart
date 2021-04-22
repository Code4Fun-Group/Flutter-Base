import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

class AppBlocObserver extends BlocObserver {
  final _logger = GetIt.I<Logger>();

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logger.d('bloc: ${bloc.runtimeType}, event: $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    _logger.d('bloc: ${bloc.runtimeType}, change: $change');
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.d('bloc: ${bloc.runtimeType}, transition: $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    _logger.d('cubit: ${bloc.runtimeType}, error: $error');
    super.onError(bloc, error, stackTrace);
  }
}
