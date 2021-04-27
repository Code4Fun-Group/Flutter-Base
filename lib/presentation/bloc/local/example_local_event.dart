part of 'example_local_bloc.dart';

abstract class ExampleLocalEvent extends Equatable {
  const ExampleLocalEvent();

  @override
  List<Object> get props => [];
}

class GetUserFromLocal extends ExampleLocalEvent {
  const GetUserFromLocal();
}
