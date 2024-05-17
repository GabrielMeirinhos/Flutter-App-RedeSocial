import 'package:flutter/material.dart';
import 'package:flutter_application/module/home/domain/keys/keys.dart';
import 'package:flutter_application/module/home/domain/states/home_state.dart';
import 'package:flutter_application/module/home/ui/stores/home_stores.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _homeStore = Modular.get<HomeStore>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formLoginKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login Page',
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  Observer(builder: (_) {
                    return Column(children: [
                      const SizedBox(height: 10),
                      Visibility(
                          visible: _homeStore.homeState is RegisterPageState,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Nome Completo',
                              border: OutlineInputBorder(),
                            ),
                          )),
                      const SizedBox(height: 10)
                    ]);
                  }),
                  TextFormField(
                    controller: _homeStore.controllerEmail,
                    decoration: const InputDecoration(
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) => _homeStore.validateEmail(value),
                  ),
                  const SizedBox(height: 10),
                  Observer(builder: (_) {
                    return TextFormField(
                      controller: _homeStore.controllerPassword,
                      obscureText: _homeStore.isObscure,
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        border: const OutlineInputBorder(),
                        suffixIcon: IconButton(
                          icon: _homeStore.isObscure
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                          onPressed: () {
                            _homeStore.makeVisible();
                          },
                        ),
                      ),
                      validator: (value) => _homeStore.validatePassword(value),
                    );
                  }),
                  Observer(builder: (_) {
                    return Column(children: [
                      const SizedBox(height: 10),
                      Visibility(
                          visible: _homeStore.homeState is RegisterPageState,
                          child: TextFormField(
                            key: formPasswordLoginKey,
                            obscureText: _homeStore.isObscure,
                            decoration: InputDecoration(
                              labelText: 'Confirmar senha',
                              border: const OutlineInputBorder(),
                              suffixIcon: IconButton(
                                icon: _homeStore.isObscure
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                                onPressed: () {
                                  _homeStore.makeVisible();
                                },
                              ),
                            ),
                          )),
                    ]);
                  }),
                  const SizedBox(height: 20),
                  Observer(builder: (_) {
                    return ElevatedButton(
                        onPressed: () {
                          _homeStore.turnLogged();
                          if (_homeStore.homeState is LoggedInState) {
                            Modular.to.navigate('/feed');
                          } else {
                            _homeStore.turnLogin();
                          }
                        },
                        child: Text((_homeStore.homeState is LoginPageState)
                            ? 'Entrar'
                            : 'Cadastrar'));
                  }),
                  const SizedBox(
                    height: 12,
                  ),
                  Observer(builder: (_) {
                    return TextButton(
                        onPressed: () {
                          _homeStore.homeState is LoginPageState
                              ? _homeStore.turnRegister()
                              : _homeStore.turnLogin();
                        },
                        child: Text((_homeStore.homeState is LoginPageState)
                            ? 'Não tem uma conta? Registre-se!'
                            : 'Já tem uma conta? Cadastre-se!'));
                  })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
