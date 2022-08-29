import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salubre/src/screens/login/login_logar_page.dart';

import '../components/layout_component.dart';

class UsuarioCadastroPage extends StatefulWidget {
  const UsuarioCadastroPage({Key? key}) : super(key: key);

  @override
  State<UsuarioCadastroPage> createState() => _UsuarioCadastroPageState();
}

class _UsuarioCadastroPageState extends State<UsuarioCadastroPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formCadastro = GlobalKey<FormState>();
    TextEditingController campoUsuario = TextEditingController();
    TextEditingController campoEmail = TextEditingController();
    TextEditingController campoSenha = TextEditingController();
    TextEditingController campoRepetirSenha = TextEditingController();

    _enviar() {
      if (formCadastro.currentState!.validate()) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const LoginLogarPage();
        }));
      }
    }

    return LayoutComponent(
      title: "Cadastro",
      showButtonHome: false,
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Background-azul-3.png',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 70, 30, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Form(
                  key: formCadastro,
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
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: campoEmail,
                        decoration: const InputDecoration(
                          labelText: "Insira seu email",
                        ),
                        validator: (value) {
                          if (value == null || value == "") {
                            return "O email é obrigatório";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: campoSenha,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Senha",
                        ),
                        validator: (value) {
                          if (value == null || value == "") {
                            return "A senha é obrigatório";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 30),
                      TextFormField(
                        controller: campoRepetirSenha,
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: "Repita sua senha",
                        ),
                        validator: (value) {
                          if (value == null || value == "") {
                            return "A repição de senha é obrigatório";
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.done,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _enviar();
                  },
                  child: Text(
                    "Enviar",
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
      showFloatingActionButton: false,
    );
  }
}
