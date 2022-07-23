import 'package:flutter/material.dart';
import 'package:salubre/src/screens/login/login_index_page.dart';

class SalubreApp extends StatelessWidget {
  const SalubreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Salubre App',
      home: LoginIndexPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}