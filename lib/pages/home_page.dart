import 'package:demo_retrofit/controllers/home_controller.dart';
import 'package:demo_retrofit/widgets/item_user_wiget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Obx(() {
        if (_controller.users.isNotEmpty) {
          return ListView.builder(
              itemCount: _controller.users.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemUserWidget(user: _controller.users[index]),
                  ));
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      })),
    );
  }
}
