import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/example_entity.dart';
import '../../../domain/usecases/example_get_user_local_usecase.dart';

part 'example_local_event.dart';
part 'example_local_state.dart';

class ExampleLocalBloc extends Bloc<ExampleLocalEvent, ExampleLocalState> {
  ExampleLocalBloc(this._getUserLocalUsecase) : super(const Initial());

  final ExampleGetUserLocalUsecase _getUserLocalUsecase;

  @override
  Stream<ExampleLocalState> mapEventToState(ExampleLocalEvent event) async* {
    if (event is GetUserFromLocal) {
      final users = await _getUserLocalUsecase(<void>{});
      yield Loaded(users);
    }
  }
}
