import 'package:flutter/material.dart';
import 'second_page.dart'; // Importa a segunda página

void main() {
  runApp(const MyApp());
}

// Início do MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginPage(),
    );
  }
}
// Fim do MyApp

// Início da LoginPage
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            EmailTextField(),
            SizedBox(height: 16),
            PasswordTextField(),
            SizedBox(height: 24),
            EnterButton(),
          ],
        ),
      ),
    );
  }
}
// Fim da LoginPage

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
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
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

// Início do EnterButton
class EnterButton extends StatelessWidget {
  const EnterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center( // Centraliza horizontalmente
      child: SizedBox(
        width: 200, // Define uma largura fixa para o botão (pode ajustar)
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[900], // Azul escuro
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondPage()),
            );
          },
          child: const Text('Entrar'),
        ),
      ),
    );
  }
}

// Fim do EnterButton
