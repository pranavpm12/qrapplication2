import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 24, // Adjust the font size as needed
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                  height: 20), // Add a gap between the text and the TextField
              Container(
                width: 300,
                height: 200,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your username', // Add the hint text
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                  height:
                  5), // Add a gap between the username field and the password field
              Container(
                width: 300,
                height: 200,
                child: TextField(
                  obscureText: true, // Hide the entered password
                  decoration: InputDecoration(
                    hintText: 'Enter your password', // Add the hint text
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text('Login', style: TextStyle(color: Colors.white))),
              InkWell(
                child: Text('create new account?Register now'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
