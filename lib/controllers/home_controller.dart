import 'package:demo_retrofit/api_setting.dart';
import 'package:demo_retrofit/models/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<User> users = <User>[].obs;

  Future getListUser() async {
    users.value = await APISetting.api.getUsers();
  }

  @override
  void onInit() {
    getListUser();
    super.onInit();
  }
}
