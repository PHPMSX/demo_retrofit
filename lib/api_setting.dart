import 'package:demo_retrofit/apis/api.dart';
import 'package:dio/dio.dart';

class APISetting {
  final dio = Dio();
  static late API api;

  static final APISetting instance = APISetting._();

  factory APISetting() {
    return instance;
  }

  APISetting._();

  Future initSettingAPI() async {
    api = API(dio);
  }
}
