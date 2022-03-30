import 'package:demo_retrofit/api_setting.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

Future main() async{
  await APISetting.instance.initSettingAPI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
