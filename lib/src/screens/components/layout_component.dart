import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salubre/src/controllers/login_controller.dart';
import 'package:salubre/src/screens/login/login_index_page.dart';

class LayoutComponent extends StatefulWidget {
  const LayoutComponent({
    Key? key,
    required this.body,
    this.title,
    this.showFloatingActionButton = true,
    this.showButtonHome = true,
  }) : super(key: key);
  final Widget body;
  final String? title;
  final bool showFloatingActionButton;
  final bool showButtonHome;

  @override
  State<LayoutComponent> createState() => _LayoutComponentState();
}

class _LayoutComponentState extends State<LayoutComponent> {
  // ignore: unused_element
  _logoff() {
    LoginController().logoff();
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const LoginIndexPage()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.title != null ? Text(widget.title!) : null,
        leading: IconButton(
          icon: SvgPicture.asset("assets/images/ícone-seta-voltar-branca.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: widget.showButtonHome
            ? [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "assets/images/home-menu-bar.svg",
                      width: 50,
                    ),
                    onPressed: () {},
                  ),
                ),
              ]
            : null,
      ),
      body: SafeArea(
        child: widget.body,
      ),
      floatingActionButton: widget.showFloatingActionButton
          ? FloatingActionButton(
              child: SvgPicture.asset("assets/images/menu.svg"),
              onPressed: () {},
            )
          : null,
    );
  }
}
