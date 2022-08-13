import 'package:flutter/material.dart';
import 'package:salubre/src/screens/home/home_page.dart';
import 'package:salubre/src/screens/shared/layout_component.dart';

class LoginLogarPage extends StatelessWidget {
  const LoginLogarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formLogar = GlobalKey<FormState>();

    _logar() {
      if (_formLogar.currentState!.validate()) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const HomePage();
        }));
      }
    }

    return LayoutComponent(
      title: "Acesse",
      showButtonHome: false,
      body: Text("Logar"),
    );
  }
}
