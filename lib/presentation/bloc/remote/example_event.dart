part of 'example_bloc.dart';

@immutable
abstract class ExampleEvent extends Equatable {
  const ExampleEvent();

  @override
  List<Object> get props => [];
}

class GetUserFromRemote extends ExampleEvent {
  const GetUserFromRemote(this.userName);
  final String userName;
}

class SaveUser extends ExampleEvent {
  const SaveUser(this.user);
  final ExampleEntity user;
}
