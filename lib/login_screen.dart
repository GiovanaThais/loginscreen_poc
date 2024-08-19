import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {
              //botão de ajuda
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Entrar em Mulheres Positivas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            _buildLoginButton(
              icon: Icons.person_outline,
              text: 'Usar telefone ou email',
              onPressed: () {
                //login por telefone ou email
              },
            ),
            const SizedBox(height: 10),
            _buildLoginButton(
              icon: Icons.person_outline,
              text: 'Convidado',
              onPressed: () {
                //login como convidado
              },
            ),
            const SizedBox(height: 10),
            _buildLoginButton(
              icon: Icons.facebook,
              text: 'Continuar com Facebook',
              onPressed: () {
                // Ação para login com Facebook
              },
            ),
            const SizedBox(height: 10),
            _buildLoginButton(
              icon: Icons.apple,
              text: 'Continuar com Apple',
              onPressed: () {
                //login com Apple
              },
            ),
            const SizedBox(height: 10),
            _buildLoginButton(
              icon: Icons.g_translate,
              text: 'Continuar com Google',
              onPressed: () {
                //login com Google
              },
            ),
            const Spacer(),
            const Text(
              'Ao continuar com uma conta, você concorda com nossos Termos de Serviço e reconhece que leu nossa Política de Privacidade.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Não tem uma conta?'),
                TextButton(
                  onPressed: () {
                    //cadastro
                  },
                  child: const Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.teal,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton({
    required IconData icon,
    required String text,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.black),
      label: Text(
        text,
        style: const TextStyle(color: Colors.black),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: const BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
