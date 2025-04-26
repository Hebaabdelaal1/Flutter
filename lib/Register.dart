import 'package:flutter/material.dart';
import 'package:flutter_application_2/CustomButton.dart';
import 'package:flutter_application_2/CustomFiieldInput.dart';
import 'package:flutter_application_2/Login.dart';
import 'package:flutter_application_2/Tasks.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Empty";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters";
    }
    return null;
  }

  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is Empty";
    }
    if (value != _passwordController.text) {
      return "Passwords do not match";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
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
                  Container(
                    color: Colors.black,
                    padding: EdgeInsets.all(5),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Register ',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    margin: EdgeInsets.all(2),
                    child: CustomInput(
                      hintText: 'Enter your name',
                      style: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person),
                      label: 'User name',
                      obscureText: false,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    margin: EdgeInsets.all(2),
                    child: CustomInput(
                      hintText: 'Enter your Password',
                      style: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.lock_outline),
                      label: 'Password',
                      isPassword: true,
                      obscureText: true,
                      controller: _passwordController,
                      validator: _validatePassword,
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    margin: EdgeInsets.all(2),
                    child: CustomInput(
                      hintText: 'Enter your Password',
                      style: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.lock_outline),
                      label: 'Confirm Password',
                      isPassword: true,
                      controller: _confirmPasswordController,
                      validator: _validateConfirmPassword,
                      obscureText: true,
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: 'Register',
                          color: Colors.deepPurpleAccent,
                          textColor: Colors.white,
                          onPressed: () {
                            _formKey.currentState?.validate();
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Tasks()),
                            );
                          },
                        ),

                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          child: Text(
                            '_____________ or _______________',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                        ),

                        CustomButton(
                          image: Image.network(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/480px-Google_%22G%22_logo.svg.png',
                            width: 24,
                            height: 24,
                          ),
                          text: "Continue with Google",
                          color: Colors.grey.shade300,
                          isOutlined: true,
                          textColor: Colors.black87,
                          borderColor: Colors.grey,
                          borderWidth: 1.5,
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                        CustomButton(
                          image: Image.network(
                            'https://cdn-icons-png.flaticon.com/512/0/747.png',
                            width: 24,
                            height: 24,
                            color: Colors.white70,
                          ),
                          text: "Register with Apple",
                          color: Colors.grey.shade300,
                          isOutlined: true,
                          textColor: Colors.white70,
                          borderColor: Colors.grey,
                          borderWidth: 1.5,
                          onPressed: () {},
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Do you have an account? ',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey[500],
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ),
                                );
                              },
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
