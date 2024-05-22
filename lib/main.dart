import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_if22c/config/assets.dart';
import 'package:project_if22c/screen/admin/dashboard_admin.dart';
import 'package:project_if22c/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: assets.colorPrimaryDark,
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: DasboardAdmin(),
    );
  }
}