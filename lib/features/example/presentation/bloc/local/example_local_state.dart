part of 'example_local_bloc.dart';

abstract class ExampleLocalState extends Equatable {
  const ExampleLocalState({this.users});

  final List<ExampleEntity>? users;

  @override
  List<Object> get props => [];
}

class Initial extends ExampleLocalState {
  const Initial();
}

class Loading extends ExampleLocalState {
  const Loading();
}

class Loaded extends ExampleLocalState {
  const Loaded(List<ExampleEntity> users) : super(users: users);
}
