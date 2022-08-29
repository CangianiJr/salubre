import 'package:flutter/material.dart';
import 'package:salubre/src/screens/components/theme_salubre.dart';
import 'package:salubre/src/screens/login/login_index_page.dart';

class SalubreApp extends StatelessWidget {
  const SalubreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Salubre App',
      home: const LoginIndexPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeSalubre().principal(),
    );
  }
}
