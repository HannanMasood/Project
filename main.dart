import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:taskapp/database/db.dart';
import 'package:taskapp/pages/Signup_page.dart';
import 'package:taskapp/pages/homepage.dart';
import 'package:get/get.dart';
import 'package:taskapp/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
