import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/user_model.dart';


part 'api.g.dart';

@RestApi(baseUrl: 'https://mocki.io/v1/')
abstract class API {
  factory API(Dio dio, {String baseUrl}) = _API;

  @GET("5873efa2-0125-4731-b36d-d68a5159269e")
  Future<List<User>> getUsers();
}
