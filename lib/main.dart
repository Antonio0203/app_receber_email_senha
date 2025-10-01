import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());  // Corrigi para usar a classe MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        // Início do AppBar
        appBar: AppBar(
          title: const Text('Login'),
        ), 
        // Fim do AppBar
        
        // Início do Body
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              EmailTextField(),
              SizedBox(height: 16),
              PasswordTextField(),
            ],
          ),
        ),
        // Fim do Body
      ),
    );
  }
}

// Início do EmailTextField
class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: 'E-mail',
        hintText: 'Digite seu e-mail',
        border: OutlineInputBorder(),
      ),
    );
  }
}
// Fim do EmailTextField

// Início do PasswordTextField
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true, // Isso esconde a senha enquanto digita
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: 'Senha',
        hintText: 'Digite sua senha',
        border: OutlineInputBorder(),
      ),
    );
  }
}
// Fim do PasswordTextField
