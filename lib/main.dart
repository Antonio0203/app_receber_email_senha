import 'package:flutter/material.dart';

/// Flutter code sample for Material Design 3 [TextField]s.

void main() {
  runApp(const TextFieldExamplesApp());
}

class TextFieldExamplesApp extends StatelessWidget {
  const TextFieldExamplesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color(0xff6750a4)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Login')),  // Retirei o 'const' aqui
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
      ),
    );
  }
}

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
