import 'package:finance_manage/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'PlusJakartaSans',
      ),
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      getPages: routes,
    );
  }
}

