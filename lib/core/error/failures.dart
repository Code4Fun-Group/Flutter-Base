import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  const ServerFailure(this.error);
  
  final DioError error;
}

class DefaultFailure extends Failure {}
