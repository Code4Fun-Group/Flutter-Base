import 'dart:async';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/services/remote_data.dart';
import '../../../domain/entities/example_entity.dart';
import '../../../domain/usecases/example_get_user_remote_usecase.dart';
import '../../../domain/usecases/example_save_user_usecase.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc(this._getUserUseCase, this._saveUserUseCase)
      : super(const Initial());

  final ExampleGetUserRemoteUsecase _getUserUseCase;
  final ExampleSaveUseCase _saveUserUseCase;

  @override
  Stream<ExampleState> mapEventToState(ExampleEvent event) async* {
    if (event is GetUserFromRemote) {
      yield* _getUserRemote(event.userName);
    } else if (event is SaveUser) {
      await _saveUserUseCase(event.user);
      yield const SavedDone();
    }
  }

  Stream<ExampleState> _getUserRemote(String? userName) async* {
    final response = await _getUserUseCase(userName ?? "");
    final user = response.data;
    final error = response.error;
    if (response is RemoteDataSuccess) {
      if (user != null) {
        yield Done(user);
      } else if (error != null) {
        yield Error(error);
      }
    }
    if (response is RemoteDataFailure && error != null) {
      yield Error(error);
    }
  }
}
