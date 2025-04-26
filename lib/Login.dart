import 'package:flutter/material.dart';
import 'package:flutter_application_2/CustomButton.dart';
import 'package:flutter_application_2/CustomFiieldInput.dart';
import 'package:flutter_application_2/Register.dart';
import 'package:flutter_application_2/Tasks.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              const SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              CustomInput(
                hintText: 'Enter your name',
                hintStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.person),
                label: 'User name',
                obscureText: false,
                style: TextStyle(color: Colors.white),
              ),

              SizedBox(height: 10),

              CustomInput(
                hintText: 'Enter your Password',
                hintStyle: TextStyle(color: Colors.white),
                style: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock_outline),
                label: 'Password',
                obscureText: true,
                suffixIcon: Icon(Icons.visibility_off),
              ),

              SizedBox(height: 20),

              CustomButton(
                text: 'LOGIN',
                color: Colors.deepPurpleAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Tasks()),
                  );
                },
              ),

              const SizedBox(height: 15),

              const Text(
                '_________ or _________',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),

              const SizedBox(height: 15),

              CustomButton(
                image: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/480px-Google_%22G%22_logo.svg.png',
                  width: 24,
                  height: 24,
                ),
                text: "Login with Google",
                color: Colors.grey.shade300,
                isOutlined: true,
                textColor: Colors.black87,
                borderColor: Colors.grey,
                borderWidth: 1.5,
                onPressed: () {},
              ),

              const SizedBox(height: 10),

              CustomButton(
                image: Image.network(
                  'https://cdn-icons-png.flaticon.com/512/0/747.png',
                  width: 24,
                  height: 24,
                  color: Colors.white70,
                ),
                text: "Login with Apple",
                color: Colors.grey.shade300,
                isOutlined: true,
                textColor: Colors.white70,
                borderColor: Colors.grey,
                borderWidth: 1.5,
                onPressed: () {},
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
