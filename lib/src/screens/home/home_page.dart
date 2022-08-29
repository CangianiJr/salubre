import 'package:flutter/material.dart';

import '../components/layout_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LayoutComponent(body: Text("home"));
  }
}
