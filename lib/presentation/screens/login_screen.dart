import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_app/presentation/screens/register_screen.dart';
import 'package:login_app/validation/pass_validation.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  late String? warningMessage = '';
  late String warningMessage2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      const Text('{DarTec}',
                          style: TextStyle(
                              fontSize: 60, fontWeight: FontWeight.w400)),
                      const SizedBox(height: 10),
                      Image.asset('assets/img/logo.png', scale: 3),
                      const SizedBox(height: 10),
                      TextFormField(
                          decoration: const InputDecoration(
                              labelText: 'Correo electrónico'),
                          validator: (value) => EmailValidator.validate(value!)
                              ? null
                              : 'Please enter a valid email',
                          onChanged: (input) {
                            setState(() {
                              email = input;
                            });
                          }),
                      const SizedBox(height: 20),
                      TextField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            //hintText: 'Contraseña',
                            labelText: 'Contraseña'),
                        onChanged: (input) {
                          setState(() {
                            password = input;
                            warningMessage = validatePassword(password);
                          });
                        },
                      ),
                      /*Row(
                        children: [
                          Expanded(
                              child: (warningMessage == 'Success')
                                  ? const Text('Contraseña fuerte',
                                      style: TextStyle(color: Colors.green))
                                  : Text(warningMessage!,
                                      style: const TextStyle(color: Colors.red)))
                        ],
                      )*/
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                OutlinedButton(
                    onPressed: () {
                      // TODO: Método para enviar a Firbase

                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.login_outlined), Text('Ingresar')],
                    )),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('¿Sin cuenta?'),
                    TextButton(
                        onPressed: () {
                          context.pushNamed(RegisterScreen.routeName);
                        },
                        child: const Text('Regístrate aquí.'))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
