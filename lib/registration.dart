import 'package:flutter/material.dart';



class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contactNumberController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _redirectToNewPage() {
    // Replace the route name with the desired route for the new webpage
    Navigator.pushNamed(context, '/newPage');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Registration',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: contactNumberController,
                decoration: InputDecoration(
                  hintText: 'Enter your contact number',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(
                  hintText: 'Enter your username',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _redirectToNewPage,
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
