import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_app/presentation/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('¡Comencemos!',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Calibri')),
              const SizedBox(height: 20),
              FloatingActionButton(
                onPressed: () {
                  context.pushNamed(LoginScreen.routeName);
                },
                backgroundColor: Colors.cyanAccent,
                splashColor: Colors.blueAccent,
                tooltip: 'Ir al login',
                child: const Icon(Icons.navigate_next_outlined),
              )
            ]),
      ),
    );
  }
}
