import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salubre/src/constants/colors_constant.dart';
import 'package:salubre/src/screens/login/login_logar_page.dart';
import 'package:salubre/src/screens/usuario/usuario_cadastro_page.dart';

class LoginIndexPage extends StatelessWidget {
  const LoginIndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Background-azul.png',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 100, 30, 150),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Já possuo conta",
                          style: TextStyle(
                              color: ColorsConstant.strongBlue, fontSize: 20),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(55),
                          primary: ColorsConstant.strongBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginLogarPage();
                          }));
                        },
                        child: const Text(
                          "Faça seu login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset("assets/images/Tutubarao.svg"),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Sou novo",
                          style: TextStyle(
                            color: ColorsConstant.strongBlue,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(55),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: ColorsConstant.blue,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const UsuarioCadastroPage();
                          }));
                        },
                        child: const Text(
                          "Faça seu cadastro",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
