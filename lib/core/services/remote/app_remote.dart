import 'package:dio/dio.dart';

import '../../../features/example/data/model/example_model.dart';
import '../remote_data.dart';

class AppRemote {
  const AppRemote(this._dio);

  final Dio _dio;

  Future<RemoteData<ExampleModel>> getUser(String userName) async {
    try {
      final response = await _dio.get("users/$userName");
      final user = ExampleModel.fromJson(response.data as Map<String, dynamic>);
      return RemoteDataSuccess(user);
    } on DioError catch (e) {
      return RemoteDataFailure(e);
    }
  }
}
