part of 'example_bloc.dart';

@immutable
abstract class ExampleState extends Equatable {
  const ExampleState();

  @override
  List<Object?> get props => [];
}

class Initial extends ExampleState {
  const Initial();
}

class Loading extends ExampleState {
  const Loading();
}

class Done extends ExampleState {
  const Done(this.user);

  final ExampleEntity user;

   @override
  List<Object?> get props => [user];

}

class Error extends ExampleState {
  const Error(this.error);

  final DioError error;
}

class SavedDone extends ExampleState {
  const SavedDone();
}
