import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
          child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text('RACHÃO',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xfe003b8a),
              )),
          Text('Quadras esportivas',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xfe003b8a),
              )),
          SizedBox(
            height: 50,
          ),
          Text('Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xfe003b8a),
              )),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email), // Ícone de email à esquerda do campo de texto,  
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock), // Ícone de bloqueio à esquerda do campo de texto,
                labelText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            width: 300,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xfe003b8a),
              ),
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ainda não tem uma conta? ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xfe003b8a),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    ));
  }
}
