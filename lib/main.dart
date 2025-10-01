import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true; // Inicia ocultando a senha

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Alterna o estado da senha
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.lock),
        labelText: 'Senha',
        hintText: 'Digite sua senha',
        border: const OutlineInputBorder(),
        // Ícone de "mostrar/ocultar"
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}
// Fim do PasswordTextField