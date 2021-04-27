import 'package:dio/dio.dart';

abstract class RemoteData<T> {
  const RemoteData({this.data, this.error});

  final T? data;
  final DioError? error;
}

class RemoteDataSuccess<T> extends RemoteData<T> {
  const RemoteDataSuccess(T data) : super(data: data);
}

class RemoteDataFailure<T> extends RemoteData<T> {
  const RemoteDataFailure(DioError error) : super(error: error);
}
