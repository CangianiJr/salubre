import 'package:flutter/material.dart';
import 'package:salubre/src/constants/colors_constant.dart';
import 'package:salubre/src/screens/login/login_logar_page.dart';
import 'package:salubre/src/screens/shared/layout_component.dart';

class UsuarioCadastroPage extends StatefulWidget {
  const UsuarioCadastroPage({Key? key}) : super(key: key);

  @override
  State<UsuarioCadastroPage> createState() => _UsuarioCadastroPageState();
}

class _UsuarioCadastroPageState extends State<UsuarioCadastroPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formCadastro = GlobalKey<FormState>();
    TextEditingController campoUsuario = TextEditingController();
    TextEditingController campoEmail = TextEditingController();
    TextEditingController campoSenha = TextEditingController();
    TextEditingController campoRepetirSenha = TextEditingController();

    _enviar() {
      if (_formCadastro.currentState!.validate()) {
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
                  key: _formCadastro,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: campoUsuario,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
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
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
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
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
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
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(color: ColorsConstant.blue),
                          ),
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
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(60),
                    primary: ColorsConstant.strongBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    _enviar();
                  },
                  child: const Text(
                    "Enviar",
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
      showFloatingActionButton: false,
    );
  }
}
