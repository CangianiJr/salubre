import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salubre/src/controllers/login_controller.dart';
import 'package:salubre/src/screens/home/home_page.dart';

import '../../constants/colors_constant.dart';
import '../components/layout_component.dart';
import '../usuario/usuario_cadastro_page.dart';

class LoginLogarPage extends StatefulWidget {
  const LoginLogarPage({Key? key}) : super(key: key);

  @override
  State<LoginLogarPage> createState() => _LoginLogarPageState();
}

class _LoginLogarPageState extends State<LoginLogarPage> {
  final GlobalKey<FormState> formLogar = GlobalKey<FormState>();
  TextEditingController campoUsuario = TextEditingController();
  TextEditingController campoSenha = TextEditingController();
  bool salvarUsuario = false;

  _logar() {
    if (formLogar.currentState!.validate()) {
      LoginController().login();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) {
          return const HomePage();
        }),
        (route) => false,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutComponent(
      title: "Acesse",
      showButtonHome: false,
      showFloatingActionButton: false,
      body: Stack(
        children: [
          // Image.asset(
          //   'assets/images/Background-azul-3.png',
          //   alignment: Alignment.center,
          //   width: MediaQuery.of(context).size.width,
          //   height: MediaQuery.of(context).size.height,
          //   fit: BoxFit.cover,
          // ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset("assets/images/Tutubarao.svg"),
                Form(
                  key: formLogar,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: campoUsuario,
                        decoration: const InputDecoration(
                          labelText: "Usuario",
                        ),
                        validator: (value) {
                          if (value == null || value == "") {
                            return "O usuário é obrigatório";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        controller: campoSenha,
                        decoration: const InputDecoration(
                          labelText: "Senha",
                        ),
                        validator: (value) {
                          if (value == null || value == "") {
                            return "A senha é obrigatória";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                          value: salvarUsuario,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          checkColor: ColorsConstant.darkBlue,
                          onChanged: (bool? value) {
                            setState(() {
                              salvarUsuario = value!;
                            });
                          }),
                    ),
                    Text(
                      "Lembrar de mim",
                      style: GoogleFonts.montserrat(
                        color: ColorsConstant.darkBlue,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Esqueci minha senha",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: ColorsConstant.strongBlue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorsConstant.blue,
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const UsuarioCadastroPage();
                        }));
                      },
                      child: Text(
                        "Não tem cadastro? Clica aqui",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    _logar();
                  },
                  child: Text(
                    "Entrar",
                    style: GoogleFonts.montserrat(
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
    );
  }
}
